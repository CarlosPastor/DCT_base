//C level
#include<systemc.h>
//Standard
#include<stdio.h>
#include<math.h>
//Module declarations
#include"Top.h"

#include"blocker_512.h"
#include"imager_512.h"
#include"sc_FIFO_DCT.h"
#include"sc_FIFO_IDCT.h"

//SC_MODULE(name)
//{
//	SC_CTOR(name)
//	{
//
//	}
//};

int main_m()
{

//	//FIFO
//	sc_fifo < sc_uint<8> >		dout("dout_fifo",512 * 512);
//	sc_fifo < sc_uint<8> >		dinter_2("dinter_2_fifo",512 * 512);
//	sc_fifo < sc_uint<8> >		dcomp("dcomp_fifo",512 * 512);
//	sc_fifo < sc_uint<8> >		dinter_1("dinter_1_fifo",512 * 512);
//	sc_fifo < sc_uint<8> >		din("din_fifo",512 * 512);
//
//	//Variables
//	sc_signal<bool>     s_clk;
//	sc_signal<bool>     s_reset;
//	sc_signal<bool>		s_start;
//	sc_signal<bool>		s_done_u1u2;
//	sc_signal<bool>		s_done_u2u3;
//	sc_signal<bool>		s_done_u3u4;
//	sc_signal<bool>		s_done;
//
//	//Bloques
//
//	sc_FIFO_DCT		U2("U_2");
//	sc_FIFO_IDCT	U3("U_3");
//
//	//Conexiones
//
//	U2.clock(s_clk);
//	U2.reset(s_reset);
//	U2.start(s_done_u1u2);
//	U2.done(s_done_u2u3);
//	U2.din(dinter_1);
//	U2.dout(dcomp);
//
//	U3.clock(s_clk);
//	U3.reset(s_reset);
//	U3.start(s_done_u2u3);
//	U3.done(s_done_u3u4);
//	U3.din(dcomp);
//	U3.dout(dinter_2);

	return 0;

}
