#!/bin/bash
# Creo el fichero vacío del informe.
echo "" > informe.txt
# Uso for para recorrer los ficheros dentro del directorio /var/log
for fichero in /var/log/*; do
# Con if y -f verifico si lo que se está guardando en la variable $fichero es un 
# archivo
	if [[ -f "$fichero" ]]; then
#Creo otro if para ver si el comando que busca error o fail devuelve algo
		if grep -iq -E "error|fail" "$fichero"; then
# Añado la línea con el nombre del fichero y ejecuto el comando que busca las líneas
# Añado tres líneas sin contenido para separar cada resultado. Todo esto redirigido a informe.txt
		echo "Fichero: $fichero" >> informe.txt
		grep -i -E "error|fail" "$fichero" >> informe.txt
		echo "" >> informe.txt
		echo "" >> informe.txt
		echo "" >> informe.txt

		fi

	fi

done
# Muestro el mensaje de que se ha generado el fichero correctamente.
echo "Informe.txt generado correctamente"
