#include "imager_512.h"

void imager_512::imager_buffer()
{
   //Initialization
   write_done = false;
   b_done = true;

   wait();
   while(true)
   {
	  while (din.num_available() < 512*8 ) wait();
	  while (!b_done) wait();

	  for(int i = 0; i < 512*8; i++)
		{
		  img_data[i] = din.read();
		}

	  write_done = true;
	  wait();
   } //end of while(true)
}

void imager_512::imager_512_main()
{
	done = false;
	b_done = true;
	wait();
	while(true)
	{

		//while (!start.read()) wait();
		//wait();
		while (!write_done) wait();
		b_done = false;

		for (int k = 0; k < 8; k++)
		{
			for (int j = 0; j < (512 / 8); j++)
			{
				for (int i = 0; i < 8; i ++)
				{
					dout.write(img_data[i + 8*8*j + 8*k]);
				}
			}
		}
		write_done = false;
		done = true;
		b_done = true;
		wait();
	} //end of while(true)

}
