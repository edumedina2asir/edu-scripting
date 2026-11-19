#!/bin/bash

# Pido la palabra y el fichero
read -p 'Escoge una palabra: ' palabra
read -p 'Escoge un fichero: ' fichero
echo ''

echo "La palabra $palabra aparece en las siguientes líneas:"

#Busco las líneas con grep (-n = número de línea)
grep -n "$palabra" "$fichero"
echo ''

echo "Aparece en un total de $(grep -n "$palabra" "$fichero" | wc -l) líneas."
