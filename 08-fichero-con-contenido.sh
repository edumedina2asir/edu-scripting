#!/bin/bash 
touch notas.txt
echo "Añado línea 1" >> notas.txt
echo "Añado línea 2" >> notas.txt
echo "Añado línea 3" >> notas.txt
cat notas.txt | wc -l
