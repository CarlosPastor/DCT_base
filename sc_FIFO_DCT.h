#ifndef SC_FIFO_DCT_H
#define SC_FIFO_DCT_H

#include"systemc.h"
#include"tlm.h"
using namespace tlm;


SC_MODULE(sc_FIFO_DCT)
{
	//Ports
	sc_in <bool>  clock;
	sc_in <bool>  reset;
	sc_in <bool>  enable;

	sc_fifo_out< sc_uint<8> > dout;
	sc_fifo_in< sc_uint<8> > din;

	//Variables
	int mA[64];
	int mB[64];
	int mC[64];

	// for debug
	int exec_cnt;

	// Signals
	sc_signal<bool> s_buffering;
	sc_signal<bool> s_buffered;
	sc_signal<bool> s_working;
	sc_signal<bool> s_DCT;
	sc_signal<bool> s_done;

	//Process Declaration
	void buffering();
	void DCT();
	void data_out();

	//Constructor
	SC_CTOR(sc_FIFO_DCT)
	{
		exec_cnt = 0;
		s_buffering = false;
		s_buffered = false;
		s_working = false;
		s_DCT = false;
		s_done = false;

		//Process Registration
		SC_CTHREAD(buffering,clock.pos());
		reset_signal_is(reset,true);

		SC_CTHREAD(DCT,clock.pos());
		reset_signal_is(reset,true);

		SC_CTHREAD(data_out,clock.pos());
		reset_signal_is(reset,true);
	}
};

#endif
