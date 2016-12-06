#ifndef SC_FIFO_IDCT_H
#define SC_FIFO_IDCT_H

#include"systemc.h"
#include"tlm.h"
using namespace tlm;


SC_MODULE(sc_FIFO_IDCT)
{
	//Ports
	sc_in <bool>  clock;
	sc_in <bool>  reset;
	sc_in <bool>  start;
	sc_out<bool>  done;
	sc_fifo_out<double> dout;
	sc_fifo_in<double> din;

	//Variables
	double mA[100];
	double mB[100];
	bool write_done;
	int exec_cnt;

	//Process Declaration
	void Prc1();
	void Prc2();

	//Constructor
	SC_CTOR(sc_FIFO_IDCT)
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
