// Interface module
// Converts matrix of 512x8 into an array of matrix of 8x8
#include<systemc.h>
#include<Constants.h>

SC_MODULE(DFT_block)
{

	//Ports

	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_port< sc_fifo_in_if<int> > blk_data_point;
	sc_port< sc_fifo_out_if<int> > dft_data_point;
	//sc_in< sc_int<8> > img_data_point;
	//sc_out< sc_int<8> > blk_data_point;

	//flow control
	//sc_mutex flow;

	//System memory
	int img_data[B*B];
	bool data_ready;

	void blocker_buffer()
	{
		wait();
		for(;;)
		{
			if(data_ready == 0)
			{
				for(int i = 0; i < N*B; i++)
				{
					if( blk_data_point->num_available())
					{
						blk_data_point->read(img_data[i]);
					}
					else
					{
						wait(blk_data_point->data_written_event());
						blk_data_point->read(img_data[i]);
					}
				}
				data_ready = 1;
			}
		}
	}

	void dct(void)
	{
	double a[64];
	int i0;
	int i1;
	int i2;
	for (i0 = 0; i0 < 8; i0++) {
	  for (i1 = 0; i1 < 8; i1++) {
	    a[i0 + (i1 << 3)] = 0.0;
	    for (i2 = 0; i2 < 8; i2++) {
	      a[i0 + (i1 << 3)] += b_a[i0 + (i2 << 3)] * block_transform[i2 + (i1 << 3)];
	    }
	  }

	  for (i1 = 0; i1 < 8; i1++) {
	    for (i2 = 0; i2 < 8; i2++) {
	      res[i0 + (i1 << 3)] += a[i0 + (i2 << 3)] * b[i2 + (i1 << 3)];
	    }
	  }
	}
	}


	SC_CTOR(DFT_block)
	{
		data_ready = 0;
		SC_CTHREAD(blocker_buffer, clk.pos());
			reset_signal_is(rst,true);
		SC_CTHREAD(blocker_512_main, clk.pos());
			reset_signal_is(rst,true);
	}

};
