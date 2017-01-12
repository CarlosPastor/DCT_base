#ifndef SC_imager_512_H
#define SC_imager_512_H

#include"systemc.h"
#include"tlm.h"
using namespace tlm;

SC_MODULE(imager_512)
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
	void imager_buffer();
	void imager_512_main();

	//Constructor
	SC_CTOR(imager_512)
	{
		//Process Registration
		SC_CTHREAD(imager_buffer,clock.pos());
		reset_signal_is(reset,true);

		SC_CTHREAD(imager_512_main,clock.pos());
		reset_signal_is(reset,true);
	}
};

#endif
