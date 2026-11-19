#/bin/bash

echo 'Usuarios del sistema:'

#Filtro con cut los usuarios de la fila 1 y delimitador con :.
cut -d: -f 1 /etc/passwd
