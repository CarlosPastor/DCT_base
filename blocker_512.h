// Interface module
// Converts matrix of 512x8 into an array of matrix of 8x8
#include<systemc.h>
#include<Constants.h>

SC_MODULE(blocker_512)
{

	//Ports

	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_port< sc_fifo_in_if<int> > img_data_point;
	sc_port< sc_fifo_out_if<int> > blk_data_point;
	//sc_in< sc_int<8> > img_data_point;
	//sc_out< sc_int<8> > blk_data_point;

	//flow control
	//sc_mutex flow;

	//System memory
	int img_data[N*B];
	bool data_ready;

	void blocker_buffer()
	{
		wait();
		for(;;)
		{
			if(data_ready == 0)
			{
				//flow.lock();
				for(int i = 0; i < N*B; i++)
				{
					wait(img_data_point->data_written_event());
					img_data_point->read(img_data[i]);
				}
				//flow.unlock();
				data_ready = 1;
			}
		}
	}

	void blocker_512_main()
	{
		wait();
		for(;;)
		{
			if(data_ready == 1)
			{
				//flow.lock();
				for (int j = 0; j < (N / B); j++)
				{
					for (int k = 0; k < B*B; k++)
					{
						blk_data_point -> write(img_data[block_pattern[k] + B*j]);
					}
				}
				data_ready = 0;
				//flow.unlock();
			}
		}
	}

	SC_CTOR(blocker_512)
	{
		data_ready = 0;
		SC_CTHREAD(blocker_buffer, clk.pos());
			reset_signal_is(rst,true);
		SC_CTHREAD(blocker_512_main, clk.pos());
			reset_signal_is(rst,true);
	}

};
