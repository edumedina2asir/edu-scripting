#!/bin/bash
# Creo el fichero sobreescribiendolo
echo "" > espacio_particiones.txt

#Ejecuto el comando, pidiendole que empiece desde la línea 2
#Redirijo el contenido con una tubería a un while, indicandole como variables las columnas que devuelve
df -h | tail -n +2 | while read -r fs size used avail uso mount; do
#Quito el % del uso para poder compararlo en el if con 80
	usoindividual=$(echo "$uso" | tr -d '%')
#Uso if para comparar si su uso es mayor a 80
	if [[ "$usoindividual" -ge 80 ]]; then
#Si cumple la condición, muestra fecha, hora, partición y el uso en porcentaje.
#Imprimo dos líneas vacías para que haya espacio entre los registros.
		fecha=$(date "+%Y-%m-%d")
		hora=$(date "+%H:%M:%S")
		echo "Fecha: $fecha" >> espacio_particiones.txt
		echo "Hora: $hora" >> espacio_particiones.txt
		echo "Partición: $mount" >> espacio_particiones.txt
		echo "Uso en porcentaje: $uso" >> espacio_particiones.txt
		echo "" >> espacio_particiones.txt
		echo "" >> espacio_particiones.txt

	fi
done
