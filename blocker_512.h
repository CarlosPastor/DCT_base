#ifndef SC_blocker_512_H
#define SC_blocker_512_H

#include"systemc.h"
#include"tlm.h"
using namespace tlm;

SC_MODULE(blocker_512)
{
	//Ports
	sc_in <bool>  clock;
	sc_in <bool>  reset;
	sc_in <bool>  start;
	sc_out<bool>  done;
	sc_fifo_out< sc_uint<8> > dout;
	sc_fifo_in< sc_uint<8> > din;

	//Variables
	sc_uint<8> img_data[512*8];
	bool write_done;
	bool b_done;

	//Process Declaration
	void blocker_buffer();
	void blocker_512_main();

	//Constructor
	SC_CTOR(blocker_512)
	{
		//Process Registration
		SC_CTHREAD(blocker_buffer,clock.pos());
		reset_signal_is(reset,true);

		SC_CTHREAD(blocker_512_main,clock.pos());
		reset_signal_is(reset,true);
	}
};

#endif
