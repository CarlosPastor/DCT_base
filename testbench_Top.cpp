#include<stdio.h>
#include<math.h>
#include<systemc.h>
#include"Top.h"
#include"qdbmp.h"
#include"Tasks.h"

#include"sc_FIFO_DCT.h"
#include"blocker_512.h"
#include"imager_512.h"
#include"sc_FIFO_IDCT.h"

#include"tb_init.h"

//Development glogal dependecies
BMP*    bmp;
UCHAR   r, g, b;
UINT    width, height;
UINT    h, w;
//--

//special
int debug_outputBPM(UCHAR * image_tonal_data, const char * app);

//too specialized!!
UCHAR image_tonal_data_bss[512 * 512];		//8bit...+250kByte
UCHAR image_tonal_data_blk[512 * 512];		//8bit...+250kByte
float image_tonal_data_csn[512 * 512];		//8bit...+250kByte

int main(int argc, char* argv[])
{
	//Specific
	sc_report_handler::set_actions("/IEEE_Std_1666/deprecated", SC_DO_NOTHING);
	sc_report_handler::set_actions( SC_ID_LOGIC_X_TO_BOOL_, SC_LOG);
	sc_report_handler::set_actions( SC_ID_VECTOR_CONTAINS_LOGIC_VALUE_, SC_LOG);
	sc_report_handler::set_actions( SC_ID_OBJECT_EXISTS_, SC_LOG);

	//FIFO
	sc_fifo <double>		dout("dout_fifo",512 * 512);
	sc_fifo <double>		dinter_2("dinter_2_fifo",512 * 512);
	sc_fifo <double>		dcomp("dcomp_fifo",512 * 512);
	sc_fifo <double>		dinter_1("dinter_1_fifo",512 * 512);
	sc_fifo <double>		din("din_fifo",512 * 512);

	//active signals
	sc_clock s_clk("s_clk",10,SC_NS);       // Create a 10ns period clock signal

	//Variables
	sc_signal<bool>     	s_reset;
	sc_signal<bool>			s_start;
	sc_signal<bool>			s_done_u1u2;
	sc_signal<bool>			s_done_u2u3;
	sc_signal<bool>			s_done_u3u4;
	sc_signal<bool>			s_done;

	//Bloques

	blocker_512		U1("U_1");
	sc_FIFO_DCT		U2("U_2");
	sc_FIFO_IDCT	U3("U_3");
	imager_512		U4("U_4");
	tb_init			UI("U_I");

	//Conexiones

	UI.clk(s_clk);
	UI.reset(s_reset);
	UI.start(s_start);

	U1.clock(s_clk);
	U1.reset(s_reset);
	U1.start(s_start);
	U1.done(s_done_u1u2);
	U1.din(din);
	U1.dout(dinter_1);

	U2.clock(s_clk);
	U2.reset(s_reset);
	U2.start(s_done_u1u2);
	U2.done(s_done_u2u3);
	U2.din(dinter_1);
	U2.dout(dcomp);

	U3.clock(s_clk);
	U3.reset(s_reset);
	U3.start(s_done_u2u3);
	U3.done(s_done_u3u4);
	U3.din(dcomp);
	U3.dout(dinter_2);

	U4.clock(s_clk);
	U4.reset(s_reset);
	U4.start(s_start);
	U4.done(s_done);
	U4.din(dinter_2);
	U4.dout(dout);

//	// Connect the DUT
//	U_dut.clock(s_clk);
//	U_dut.reset(s_reset);
//	U_dut.done(s_done);
//	U_dut.start(s_start);
//	U_dut.dout(dout);
//	U_dut.din(din);
//
//	// Drive stimuli from dat* ports
//	// Capture results at out* ports
//	U_tb_driver.clk(s_clk);
//	U_tb_driver.reset(s_reset);
//	U_tb_driver.start(s_start);
//	U_tb_driver.done(s_done);
//	U_tb_driver.dout(dout);
//	U_tb_driver.din(din);
//
//	Component declarations

	char buff[100];
	sprintf(buff, "lena512.bmp");		//target img

	UCHAR cmp_mask[64];		//Needed??	//Mask vector (pre-generated?)

	int nblocks = 0;		//Needed??

	// Load file and extract data ///////////////////////////////////////////////////////////////////////////////////////


	/* Read an image file */
	bmp = BMP_ReadFile(buff);
	/* If an error has occurred, notify and exit */
	BMP_CHECK_ERROR(stderr, -1);
	/* Get image's dimensions */
	width = BMP_GetWidth(bmp);
	height = BMP_GetHeight(bmp);
	/* Iterate through all the image's pixels */
	for (h = 0; h < height; ++h)
	{
		for (w = 0; w < width; ++w)
		{
			/* Get pixel's RGB values */
			BMP_GetPixelIndex(bmp, w, h, &image_tonal_data_bss[w + width*h]);
			din.write((double)image_tonal_data_bss[w + width*h]);
		}
	}


	//  Make blocks ///////////////////////////////////////////////////////////////////////////////////////

	//blocker operation
	blocker_8_512_sq(image_tonal_data_bss,image_tonal_data_blk);

	debug_outputBPM(image_tonal_data_blk, "blk");

	//blocker operation
	nblocks = blocker_8_512_sq(image_tonal_data_bss, image_tonal_data_blk);
	copy_F_U(image_tonal_data_blk, image_tonal_data_csn, 512*512);

	// Input modifications ///////////////////////////////////////////////////////////////////////////////////////

	//stripes and mask
	block_mask_8_512_sq(cmp_mask, 6);

	for (int n = 0; n < nblocks; n++)
	{
		if (n % 2)
			MxC(&image_tonal_data_blk[n * B * B], -1); //image striper
		else
			BxA(&image_tonal_data_blk[n * B * B], cmp_mask); //image striper
	}

	//imager operation
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "pst");

	////////////////////////////////////////////////////////////////////////////////////////

	//

	////////////////////////////////////////////////////////////////////////////////////////

	copy_U_F(image_tonal_data_csn, image_tonal_data_blk, 512 * 512);
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "pre");

	for (int n = 0; n < nblocks; n++)
	{
		QnD_TATt(&image_tonal_data_csn[n * B * B]);
	}

	copy_U_F(image_tonal_data_csn, image_tonal_data_blk, 512 * 512);
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "csnt");

	for (int n = 0; n < nblocks; n++)
	{
		Mask(&image_tonal_data_csn[n * B * B], cmp_mask);
	}

	copy_U_F(image_tonal_data_csn, image_tonal_data_blk, 512 * 512);
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "csnt_cmp");

	for (int n = 0; n < nblocks; n++)
	{
		QnD_TtAT(&image_tonal_data_csn[n * B * B]);
	}

	copy_U_F(image_tonal_data_csn, image_tonal_data_blk, 512 * 512);
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "csnti");

	// Sim
	int end_time = 10;

	cout << "INFO: Simulating " << endl;

	// start simulation
	sc_start(end_time, SC_MS);

	cout<<"READ:" <<endl;
	while (!s_done_u3u4) wait();

	for(int i=0; i<512*512; i++)
	{
		image_tonal_data_bss[i] = dout.read();
	}
	debug_outputBPM(image_tonal_data_bss, "hwsim");

	////////////////////////////////////////////////////////////////////////////////////////

	/* Free all memory allocated for the image */
	BMP_Free(bmp);

	return 0;
}

int debug_outputBPM(UCHAR * image_tonal_data, const char * app)
{

	for (h = 0; h < height; ++h)
	{
		for (w = 0; w < width; ++w)
		{
			/* Set pixel's RGB values */
			BMP_SetPixelIndex(bmp, w, h, image_tonal_data[w + width*h]);

		}
	}

	/* Save result */
	char buff[50];
	sprintf(buff, "lena512_%s.bmp", app);
	BMP_WriteFile(bmp, buff);
	BMP_CHECK_ERROR(stderr, -2);
	return 0;

}
