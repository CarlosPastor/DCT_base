/**
 *	DCT body
 *	Autores:
 *		Carlos Pastor
 *		Miguel Angel
 *
 */

#include "sc_FIFO_DCT.h"

// Valores escalados de la matriz DCT

static const int b[] = {
		90,   90,   90,   90,   90,   90,   90,   90,
		125,  106,   71,   24, -24, -71, -106, -125,
		118,   48, -48, -118, -118, -48,   48,  118,
		106, -24, -125, -71,   71,  125,   24, -106,
		90, -90, -90,   90,   90, -90, -90,   90,
		71, -125,   24,  106, -106, -24,  125, -71,
		48, -118,  118, -48, -48,  118, -118,   48,
		24, -71,  106, -125,  125, -106,   71, -24,
};

static const int b_a[] = {
		90,  125,  118,  106,   90,   71,   48,   24,
		90,  106,   48, -24, -90, -125, -118, -71,
		90,   71, -48, -125, -90,   24,  118,  106,
		90,   24, -118, -71,   90,  106, -48, -125,
		90, -24, -118,   71,   90, -106, -48,  125,
		90, -71, -48,  125, -90, -24,  118, -106,
		90, -106,   48,   24, -90,  125, -118,   71,
		90, -125,  118, -106,   90, -71,   48, -24,
};

// Este proceso trabaja para llenar un buffer de 64 valores y se lo pasa a
// la DCT para el calculo.
// Espera a que el trabajo de la DCT termine y que los datos se han
// escrito a la salida para ejecutar otro ciclo.
void sc_FIFO_DCT::buffering()
{
	//Initialization
	int i = 0;

	wait();
	while(true)
	{
		// If DCT is working no data is bufered
		while(s_working.read()) wait();

		// 64 values are read from the FIFO
		while(din->num_available() == 0) wait();

		mA[i] = (int) din->read();
		i++;

		//When a complete block is read the sincronization process signals the DCT process
		if(i == 64)
		{
			i = 0;
			s_buffered.write(true);
			while(!s_working.read()) wait();
			s_buffered.write(false);
		}
		wait();
   } //end of while(true)
}


// En este proceso se aplica la DCT para valores INT
// Espera a tener el buffer mA con los 64 datos para empezar.
// Deues hace la multiplicacion de forma similar al codigo en C
void sc_FIFO_DCT::DCT()
{
   //Initialization
   int a[64];

   int s[8];
#pragma HLS ARRAY_PARTITION variable=s dim=1
   int i0 = 0;
#pragma HLS ARRAY_PARTITION variable=i0 dim=1
   int i1 = 0;
#pragma HLS ARRAY_PARTITION variable=i1 dim=1
   int i2 = 0;
#pragma HLS ARRAY_PARTITION variable=i2 dim=1

   wait();

   while(true)
   {
	   //while (!start.read()) wait();
	   while (!s_buffered.read()) wait();
	   s_working.write(true);

	   DCT_loop:for (i0 = 0; i0 < 8; i0++)
	   {
			 // Multiplicacion T x A
		   TA:for (i1 = 0; i1 < 8; i1++)
		   {
				 // Multiplicacion T x A
			   multTA:for (i2 = 0; i2 < 8; i2++)
			   {
				   s[i2] = b_a[i0 + (i2 << 3)] * ( mA[i2 + (i1 << 3)] );
			   }
				 // Saca el resultado de el produto vectorial T x A
			   sumTA:for (i2 = 1; i2 < 8; i2++)
			   {
				   s[0] += s[i2];
			   }
				 // Guarda los valores calculados en la matriz a
			   a[i0 + (i1 << 3)] = s[0];
		   }
			 // Multiplicacion (T x A) * Tt
		   AT:for (i1 = 0; i1 < 8; i1++)
		   {
				 // Multiplicacion (T x A) * Tt
			   multAT:for (i2 = 0; i2 < 8; i2++)
			   {
				   s[i2] = a[i0 + (i2 << 3)] * b[i2 + (i1 << 3)];
			   }
				 // Saca el resultado de el produto vectorial (T x A) * T
			   sumAT:for (i2 = 1; i2 < 8; i2++)
			   {
				   s[0] += s[i2];
			   }
				 // Guarda los valores calculados en la matriz mB
			   mB[i0 + (i1 << 3)] = s[0];
			   // Se escala y se pone un ofset para meter el valor en un int
			   mC[i1 + (i0 << 3)] = ((mB[i0 + (i1 << 3)]/65536)/8 + 127);
		   }
	   }

		 // Reporta el estado
	   cout << "Simulating DCT" << (exec_cnt++) << endl;
	   wait();

	   s_DCT.write(true);
	   s_working.write(false);
	   while (!s_done.read()) wait();
	   s_DCT.write(false);
	   wait();

   } //end of while(true)
}

// Espera a que termine el calculo para sacar los valores a la salida.
void sc_FIFO_DCT::data_out()
{
	//Initialization
	int i0 = 0;
	int i1 = 0;

	wait();

	while(true)
	{
		// If DCT is working no data is bufered
		while(!s_DCT.read()) wait();

		// 64 values are writen from the FIFO
	    for(int i=0;i<64; i++)
	        dout->write((sc_uint<8>) mC[i]);

		//When a complete block is read the sincronization process signals the DCT process
		s_done.write(true);
		while(s_DCT.read()) wait();
		s_done.write(false);

		wait();

   } //end of while(true)
}
