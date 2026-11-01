#!/bin/bash

#Declaro la variable fichero con su nombre correspondiente
fichero="programas.txt"

#Con While leo las líneas del fichero.
while read programa; do

#Con if verifico si el programa está instalado, si es así procedo a desintalar
	if dpkg -s "$programa"; then
		echo "Eliminando $programa"
		sudo apt remove -y "$programa"
#Si no está instalado muestro el siguiente mensaje
	else
		echo "El programa $programa no está instalado"
	fi
#Le indico que el fichero que tiene que leer las líneas del fichero guardado en $fichero
done < "$fichero"
