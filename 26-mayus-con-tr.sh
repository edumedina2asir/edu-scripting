#!/bin/bash

# Pido la frase
read -p 'Introduce una frase : ' frase

echo ' '

echo 'Frase en mayúsculas: '

# Transformo la frase con todo maýusculas
echo "$frase" | tr 'a-z' 'A-Z'

echo ' '

echo 'Frase sin espacios: '

# Quito los espacios de las frases -d (delete)
echo "$frase" | tr -d ' '
