#ifndef SC_imager_512_H
#define SC_imager_512_H

#include"systemc.h"
#include"tlm.h"
using namespace tlm;

/*
Modulo imager_512
-----------------

Entradas:
- Señal de reloj - boolean
- Señal de reset - boolean
- Señal de start - boolean
- FIFO de 1byte - din -> será la FIFO donde se colocarán los píxeles colocados en bloques de 8x8.
						 Estos píxeles vendrán de la DCT.

Salidas
- Señal done - boolean
- FIFO de 1byte - dout -> será la FIFO donde colocaremos los píxeles colocados para una correcta
						  visualización de la imagen recuperada.

*/
SC_MODULE(imager_512)
{
	//Puertos
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

	//Declaración de procesos
	void imager_buffer();
	void imager_512_main();

	//Constructor
	SC_CTOR(imager_512)
	{
		write_done =  false;
		b_done = true;

		//Process Registration
		SC_CTHREAD(imager_buffer,clock.pos());
		reset_signal_is(reset,true);

		SC_CTHREAD(imager_512_main,clock.pos());
		reset_signal_is(reset,true);
	}
};

#endif
