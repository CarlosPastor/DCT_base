/*
El módulo blocker_512 se encargará de ordenar los valores de entrada en bloques de 8x8 píxeles de la imagen.
Para ello es necesario crear el vector block_pattern para conocer que posiciones coger del vector
de entrada para conseguir el orden correcto. 
block_pattern = [0, 1, ..., 7, 512, 513, ..., 519, 1024, 1025, ..., 1031,..., 3583, 3584, ..., 3590]

Para poder colocar correctamente los bloques de 8x8 píxeles necesitará tener, al menos, 512x8 valores en la fifo
de entrada. De esta forma nos aseguramos que tenemos 8 filas de la imagen.

Una colocados correctamente los bloques e 8x8 pixeles, los colocará en la fifo de salida para el bloque encargado
de la DCT.

Entradas:
- Reloj
- Reset
- Señal de start
- FIFO de valores de 1byte

Salidas:
- FIFO de valores de 1byte
- Señal done

Módulos:
- blocker_buffer -> se encargará de colocar los 512x8 píxeles que tenga en su FIFO de entrada en el vector img_data.
- blocker_512_main -> se encargará de colocar los 512x8 píxeles de img_data en bloques de 8x8 para su DCT.

*/

#include "blocker_512.h"

//Vector para colocar correctamente los píxeles en bloques de 8x8
int block_pattern[64] = {0, 1, 2, 3, 4, 5, 6, 7, 512, 513, 514, 515, 516, 517, 518, 519, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 3072, 3073, 3074, 3075, 3076, 3077, 3078, 3079, 3584, 3585, 3586, 3587, 3588, 3589, 3590, 3591};


/*
blocker_buffer
--------------

Esperará a tener 512*8 valores en la fifo de entrada, es decir, 8 filas de la imagen de entrada de 512x512.
Cuando dispone de esos valores en la FIFO de entrada, los coloca en img_data y da paso a blocker_512_main
Primeros 512 valores corresponden a la primera fila de la imagen
Segundos 512 valores corresponden a la segunda final de la imagen
Etc.
*/
void blocker_512::blocker_buffer()
{
   //Inicialización
   write_done = false;

   wait();
   while(true)
   {
	  //Espera hasta tener 512x8 valores en la FIFO de entrada
	  while (din.num_available() < 512*8 ) wait();
	  //Espera a que blocker_512_main envía por la FIFO de salida los valores obtenidos
	  while (!b_done) wait();
	  //Guardamos en img_data los valores de la FIFO de entrada
	  for(int i = 0; i < 512*8; i++)
		{
		  img_data[i] = din.read();
		}

	  write_done = true;
	  wait();
   } //end of while(true)
}


/*
blocker_512_main
----------------

Cuando blocker_buffer haya colocado los 512x8 valores en img_data, blocker_512_main los ordenará en bloques 
de 8x8 píxeles haciendo uso de block_pattern. Estos nuevos 512x8 valores colocados correctamente los colocará
en la FIFO de salida:
Primeros 64 valores corresponden al primer bloque de 8x8 píxeles de la imagen original
Segundos 64 valores corresponden al segundo bloque de 8x8 píxeles de la imagen original
Etc.
*/
void blocker_512::blocker_512_main()
{
	done = false;
	b_done = true;
	wait();
	while(true)
	{

		//Espera a tener los 512x8 valores en img_data
		while (!write_done) wait();
		b_done = false;

		//Envía por la FIFO de salida los bloques de 8x8 valores colocados correctamente
		for (int j = 0; j < (512 / 8); j++)
		{
			for (int k = 0; k < 8*8; k++)
			{
				dout.write(img_data[block_pattern[k] + 8*j]);
			}
		}
		write_done = false;
		done = true;
		b_done = true;
		wait();
	} 
}
