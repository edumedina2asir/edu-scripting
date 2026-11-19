#!/bin/bash

# Creo el fichero por redirección y añado las frases
echo 'Me gusta Windows' > amorporwindows.txt

echo 'Adoro Windows' >> amorporwindows.txt

echo 'Amo Windows' >> amorporwindows.txt

echo 'Windows se ha hecho un flip reset' >> amorporwindows.txt

echo 'Me gusta el cliente de Windows, pero no su server' >> amorporwindows.txt

echo 'Mi nombre es Windows, con permiso caballero' >> amorporwindows.txt

echo 'Contenido del fichero creado: '

cat amorporwindows.txt

echo ' '

echo 'Fichero tras la sustitución: '

# Aplico la sustitución con s (sustituye) y g (-global- a todo el fichero)
sed 's/Windows/Linux/g' amorporwindows.txt
