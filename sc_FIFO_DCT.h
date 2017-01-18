/**
 *	DCT module
 *	Autores:
 *		Carlos Pastor
 *		Miguel Angel
 *
 *	En este bloque implementamos la DCT utilizando FIFOS
 *	para la entrada y salida de datos.
 *	Desde DCT implemetada en C, este codigo se a simplificado para
 *	hacer la operacion en un solo bucle y no tener llamadas internas.
 *	Ademas se hace un escalado de los valores de la matriz DCT (T*256) junto
 *	a los resultados para conseguir que todos los valores de salida se
 *	encuentren en el rengo de un uint_8.
 *
 * Cuenta con tres processos, uno para la sincronizacion,
 * otro para la operacion y un ultimo para moter los datos
 * en la fifo de salida
 * 	void buffering();
 *	void DCT();
 *	void data_out();
 *
 * Cuenta con las sigueintes entradas y salidas
 *
 * 		Entradas:
 *		- clock
 *		- reset
 *		- enable
 *		- FIFO de valores de 1byte
 *
 *		Salidas:
 *		- FIFO de valores de 1byte
 *
 */

#ifndef SC_FIFO_DCT_H
#define SC_FIFO_DCT_H

#include"systemc.h"
#include"tlm.h"
using namespace tlm;


SC_MODULE(sc_FIFO_DCT)
{
	// Declracion de los puertos
	sc_in <bool>  clock;
	sc_in <bool>  reset;
	sc_in <bool>  enable;

	sc_fifo_out< sc_uint<8> > dout;
	sc_fifo_in< sc_uint<8> > din;

	// Variables para almacenar valores intermedios
	int mA[64];
	int mB[64];
	int mC[64];

	// Debug
	int exec_cnt;

	// Internal Signals
	// Se usan para sincronizar los procesos internos
	sc_signal<bool> s_buffering;
	sc_signal<bool> s_buffered;
	sc_signal<bool> s_working;
	sc_signal<bool> s_DCT;
	sc_signal<bool> s_done;

	// Process Declaration
	void buffering();
	void DCT();
	void data_out();

	// Constructor
	SC_CTOR(sc_FIFO_DCT)
	{
		// Inicializacion
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
