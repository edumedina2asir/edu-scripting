#!/bin/bash

echo 'Líneas 5-10 de passwd mediante head + tail:'

# Con head + tail
# El tail es 6 para que coja la línea 5
cat /etc/passwd | head -n 10 | tail -n 6

echo ' '

echo 'Líneas 5-10 de passwd mediante sed:'

# Con sed -n:
# sed -n ignora las líneas del fichero y la p imprime las indicadas

cat /etc/passwd | sed -n '5,10p'
