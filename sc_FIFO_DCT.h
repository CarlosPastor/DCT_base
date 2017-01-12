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
	sc_in <bool>  start;
	sc_out<bool>  done;
	sc_fifo_out< sc_uint<8> > dout;
	sc_fifo_in< sc_uint<8> > din;

	//Variables
	int mA[100];
	int mB[100];
	bool write_done;
	int exec_cnt;

	//Process Declaration
	void Prc1();
	void Prc2();

	//Constructor
	SC_CTOR(sc_FIFO_DCT)
	{
		exec_cnt = 0;
		write_done = false;

		//Process Registration
		SC_CTHREAD(Prc1,clock.pos());
		reset_signal_is(reset,true);

		SC_CTHREAD(Prc2,clock.pos());
		reset_signal_is(reset,true);
	}
};

#endif
