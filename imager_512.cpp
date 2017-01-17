/*
El módulo imager_512 es opuesto al módulo blocker_512. Generará la imagen a partir de un vector con los 
bloques de 8x8 valores. Para ello, será necesario conocer la posición de cada pixel en el bloque de 8x8
y saber en qué posición final se debe colocar.

Para poder colocar correctamente los bloques de 8x8 píxeles necesitará tener, al menos, 512x8 valores en la fifo
de entrada. De esta forma nos aseguramos que tenemos los valores de las primeras 8 filas.

Entradas:
- Reloj
- Reset
- Señal de start
- FIFO de valores de 1byte

Salidas:
- FIFO de valores de 1byte
- Señal done

Procesos:
- imager_buffer -> esperará tener 512x8 valores en su FIFO de entrada y los colocará en el vector img_data.
- imager_512_main -> se encargará de colocar los bloques de 8x8 píxeles en su posición final en la imagen 
					 para una correcta visualización.

*/

#include "imager_512.h"

/*
imager_buffer
--------------

Esperará a tener 512*8 valores en la fifo de entrada, es decir, 8 filas de la imagen de entrada de 512x512
colocadas en bloques de 8x8 píxeles.
Cuando dispone de esos valores en la FIFO de entrada, los coloca en img_data y da paso a imager_512_main
Primeros 64 valores corresponden al primer bloque de 8x8 píxeles de la imagen original procesados
Segundos 64 valores corresponden al segundo bloque de 8x8 píxeles de la imagen original procesados
Etc.
*/
void imager_512::imager_buffer()
{
   //Inicialización
   write_done = false;
   b_done = true;

   wait();
   while(true)
   {
	  //Esperará a tener 512x8 valores 
	  while (din.num_available() < 512*8 ) wait();
	  while (!b_done) wait();
	  //Colocará los valores en img_data
	  for(int i = 0; i < 512*8; i++)
		{
		  img_data[i] = din.read();
		}
	  //Notifica que ha realizado la operación
	  write_done = true;
	  wait();
   } //end of while(true)
}

/*
imager_512_main
---------------

Cuando imager_buffer haya colocado los 512x8 valores en img_data, imager_512_main los ordenará de forma correcta
para tener una correcta visualización de la imagen. Estos nuevos valores los colocará en la FIFO de salida:
Primeros 512 valores corresponden a la primera fila de la imagen recuperada
Segundos 512 valores corresponden a la segunda final de la imagen recuperada
Etc.
*/
void imager_512::imager_512_main()
{
	done = false;
	b_done = true;
	wait();
	while(true)
	{

		//Espera a que img_data haya terminado
		while (!write_done) wait();
		b_done = false;
		
		//Coloca los píxeles en el orden correcto para una correcta visualización
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
		//Esperará a tener otra vez 512x8 valores
		write_done = false;
		done = true;
		b_done = true;
		wait();
	} 

}
