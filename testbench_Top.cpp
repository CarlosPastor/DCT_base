/**
 *	Testbench program
 *	Autores:
 *		Carlos Pastor
 *		Miguel Angel
 *
 * El testbench esta implementado usando los bloques imager, blocker, DCT e IDCT
 * junto con el codigo C desarrollado inicialmente, que se usa para tener una
 * referencia del funcionamiento ideal.
 * Al terminar la simulacion resultan dos imagenes.
 * 	hwsim_out_int - resultados Sysyem C
 *  lena512_softsim_out_float - Resultados calculo C con compresion
 */

#include<stdio.h>
#include<math.h>
#include<systemc.h>

// Dependencias de la simulacion en C
#include"Top.h"
#include"qdbmp.h"
#include"Tasks.h"
// Bloques system C
#include"blocker_512.h"
#include"imager_512.h"
#include"sc_FIFO_DCT.h"
#include"sc_FIFO_IDCT.h"
// Dependencias del testbench
#include"tb_init.h"

// Defines and global declarations ------------------------------------//

//Variables globales
BMP*    bmp;
UCHAR   r, g, b;
UINT    width, height;
UINT    h, w;

//Funcion de debug que combierte un buffer de imagen en la imagen
int debug_outputBPM(UCHAR * image_tonal_data, const char * app);

// buffer de imagen
UCHAR image_tonal_data_bss[512 * 512];
UCHAR image_tonal_data_blk[512 * 512];
float image_tonal_data_csn[512 * 512];

// End of Defines and global declarations -------------------------------//

// Testbench main -------------------------------------------------------//

int sc_main(int argc, char* argv[])
{
	//FIFOs de interconexion
	sc_fifo < sc_uint< 8 > >		dout("dout_fifo",512 * 512);
	sc_fifo < sc_uint< 8 > >		dinter_2("dinter_2_fifo",512 * 512);
	sc_fifo < sc_uint< 8 > >		dcomp("dcomp_fifo",512 * 512);
	sc_fifo < sc_uint< 8 > >		dinter_1("dinter_1_fifo",512 * 512);
	sc_fifo < sc_uint< 8 > >		din("din_fifo",512 * 512);

	//Reloj
	sc_clock s_clk("s_clk",10,SC_NS);       // Create a 10ns period clock signal

	//Señales de interconexion
	sc_signal<bool>     	s_reset;
	sc_signal<bool>			s_start;
	sc_signal<bool>			s_done_u1u2;
	sc_signal<bool>			s_done_u2u3;
	sc_signal<bool>			s_done_u3u4;
	sc_signal<bool>			s_done;

	//Instanciacion de los bloques

	blocker_512		U1("U_1");
	sc_FIFO_DCT		DCT("U_2");
	sc_FIFO_IDCT	U3("U_3");
	imager_512		U4("U_4");
	tb_init			UI("U_I");

	//Conexiones entre los bloques

	// Testbench
	UI.clk(s_clk);
	UI.reset(s_reset);
	UI.start(s_start);

	// blocker
	U1.clock(s_clk);
	U1.reset(s_reset);
	U1.start(s_start);
	U1.done(s_done_u1u2);
	U1.din(din);
	U1.dout(dinter_1);

	//DCT
	// Signals
	DCT.clock(s_clk);
	DCT.reset(s_reset);
	DCT.enable(s_start);
	// fifos
	DCT.din(dinter_1);
	DCT.dout(dcomp);

	//IDCT
	// Signals
	U3.clock(s_clk);
	U3.reset(s_reset);
	U3.start(s_done_u2u3);
	U3.done(s_done_u3u4);
	// fifos
	U3.din(dcomp);
	U3.dout(dinter_2);

	// imager
	U4.clock(s_clk);
	U4.reset(s_reset);
	U4.start(s_done_u3u4);
	U4.done(s_done);
	U4.din(dinter_2);
	U4.dout(dout);

// End of System C ----------------------------------------------//

// Calculo en C -------------------------------------------------//
// Variables para la DCT en C -----------------------------------//

	char buff[100];
	sprintf(buff, "lena512.bmp");		//target img
	UCHAR cmp_mask[64];		//Mask vector (for compresion)
	int nblocks = 0;

// Abrimos la imagen BMP y extraemos los datos ------------------//

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
			/* Get pixel's Index values */
			BMP_GetPixelIndex(bmp, w, h, &image_tonal_data_bss[w + width*h]);
			// Los pixeles se guardan en el buffer image_tonal_data_bss
		}
	}

// Metemos los datos en la FIFO ---------------------------------//

	for(int i = 0; i<512*512; i++)
		din.write((sc_uint<8>)image_tonal_data_bss[i]);

// Calculamos la DCT directa e inversa y comprobamos ------------//
// los resultados con y sin mascara -----------------------------//

	// Blocker operation
	// Nblocks es e numero de bloques 8x8 creados en image_tonal_data_blk
	// a partir de los datos de image_tonal_data_bss
	nblocks = blocker_8_512_sq(image_tonal_data_bss, image_tonal_data_blk);
	// Imprimimos los resultados en una imagen intermedia
	// "lena512_blk.bmp"
	debug_outputBPM(image_tonal_data_blk, "blk");
	// Pasamos los datos a Float para evitar perder precision en el calculo
	copy_F_U(image_tonal_data_blk, image_tonal_data_csn, 512*512);

	// Aplicamos la DCT a los valores float
	// Funcion multiplcando los valores (A) primero por la matriz DCT directa
	// (T) y despues por la transpuesta de esta (Tt) de modo que DCT = T x A x Tt
	// Esto se hace para los n bloques de la imagen
	for (int n = 0; n < nblocks; n++)
	{
		QnD_TATt(&image_tonal_data_csn[n * B * B]);
	}
	// Imprimimos los resultados en una imagen intermedia
	// "lena512_csnt.bmp"
	copy_U_F(image_tonal_data_csn, image_tonal_data_blk, 512 * 512);
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "csnt");
	// Aplicamos una mascara
	// 1 1 1 1 1 1 0 0
	// 1 1 1 1 1 0 0 0
	// 1 1 1 1 0 0 0 0
	// 1 1 1 0 0 0 0 0
	// 1 1 0 0 0 0 0 0
	// 1 0 0 0 0 0 0 0
	// 0 0 0 0 0 0 0 0
	// 0 0 0 0 0 0 0 0
	// esto simula el comprimir la imagen eliminando los datos
	// correspondientes a las altas frecuancias
	// La sigueinte funcion genera la mascara
	block_mask_8_512_sq(cmp_mask, 6);
	// Aplicamos la mascara a N bloques multiplicandola escalarmente por los
	// valores del bloque
	for (int n = 0; n < nblocks; n++)
	{
		Mask(&image_tonal_data_csn[n * B * B], cmp_mask);
	}
	// Imprimimos los resultados en una imagen intermedia
	// "lena512_csnt_cmp.bmp"
	copy_U_F(image_tonal_data_csn, image_tonal_data_blk, 512 * 512);
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "csnt_cmp");
	// Aplicamos la IDCT a los valores float
	// Es la inversa de la DCT
	// Esto se hace para los n bloques de la imagen
	for (int n = 0; n < nblocks; n++)
	{
		QnD_TtAT(&image_tonal_data_csn[n * B * B]);
	}
	// Imprimimos los resultados en una imagen intermedia
	// "lena512_softsim_out_float.bmp"
	copy_U_F(image_tonal_data_csn, image_tonal_data_blk, 512 * 512);
	imager_8_512_sq(image_tonal_data_blk, image_tonal_data_bss);
	debug_outputBPM(image_tonal_data_bss, "softsim_out_float");

// Ahora simulamos la DCT usando los bloques en system C --------//
// en este caso las operaciones se hacen en int por lo ..........//
// que pierede precision ----------------------------------------//

	int end_time = 5;

	cout << "INFO: Simulating " << endl;

	// start simulation
	sc_start(end_time, SC_MS);

	cout<<"INFO:  Complete" <<endl;

	// Sacamos los resultados de la fifo y los ponemos en una ultima
	// imagen para comparar
	for(int i=0; i<512*503; i++)
	{
		image_tonal_data_bss[i] = (UCHAR)(dout.read());
	}
	debug_outputBPM(image_tonal_data_bss, "hwsim_out_int");

////////////////////////////////////////////////////////////////////////

	/* Free all memory allocated for the image */
	BMP_Free(bmp);

	return 0;
}

// Funcion que genera la imagen de debug usando la libreria
// QnD bmp
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
