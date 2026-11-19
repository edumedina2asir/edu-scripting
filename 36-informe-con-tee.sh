#!/bin/bash

# Ejecuto los comandos del informe entre corchetes para posteriormente ser recogidos por tee hacia fichero.txt
# Nombre del equipo
{
echo "Nombre del equipo: $(hostname)"
echo ''

# Usuarios humanos
# Para filtrar por humanos, pongo condiciones de que su uid sea >= 1000 y < 65534
echo 'Usuarios humanos: '
awk -F: '$3 >= 1000 && $3 < 65534 {print $1}' /etc/passwd
echo ''

# Número de usuarios humanos (cuento lo anterior con wc -l)
echo "Número de usuarios humanos: $(awk -F: '$3 >= 1000 && $3 < 65534 {print $1}' /etc/passwd | wc -l)"
} | tee informe.txt

