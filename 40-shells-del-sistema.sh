#!/bin/bash

echo 'Shells de este sistema y usuarios que la usan:'

# Obtengo con cut la columna 7
# Ordeno para que uniq no cuente solo las líneas que estén seguidas
# Uso uniq para que no muestre repeticiones y -c para que muestre la cantidad de veces que aparece ese valor en el fichero.
cut -d: -f7 /etc/passwd | sort | uniq -c
