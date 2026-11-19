#!/bin/bash

# Pido el nombre del fichero
read -p 'Elige el fichero: ' fichero

# Devuelvo líneas, palabras y caracteres

echo 'Líneas del fichero: ' 

cat $fichero | wc -l

echo 'Palabras del fichero: '

cat $fichero | wc -w

echo 'Caracteres del ficho: '

cat $fichero | wc -m
