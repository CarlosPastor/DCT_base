#include "blocker_512.h"

int block_pattern[64] = {0, 1, 2, 3, 4, 5, 6, 7, 512, 513, 514, 515, 516, 517, 518, 519, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 3072, 3073, 3074, 3075, 3076, 3077, 3078, 3079, 3584, 3585, 3586, 3587, 3588, 3589, 3590, 3591};

void blocker_512::blocker_buffer()
{
   //Initialization
   write_done = false;

   wait();
   while(true)
   {
	  while (din.num_available() < 512*8 ) wait();
	  while (!b_done) wait();
	  write_done = false;

	  for(int i = 0; i < 512*8; i++)
		{
		  img_data[i] = din.read();
		}

	  write_done = true;
	  wait();
   } //end of while(true)
}

void blocker_512::blocker_512_main()
{
	done = false;
	b_done = true;
	wait();
	while(true)
	{

		while (!start.read()) wait();
		wait();
		while (!write_done) wait();
		b_done = false;

		for (int j = 0; j < (512 / 8); j++)
		{
			for (int k = 0; k < 8*8; k++)
			{
				dout.write(img_data[block_pattern[k] + 8*j]);
			}
		}

		done = true;
		b_done = true;
		wait();
	} //end of while(true)

}
