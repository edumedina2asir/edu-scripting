#!/bin/bash
read -p "Escribe el año en el que naciste: " yearusuario
yearactual=$(date +%Y)
echo "Tu edad aproximada es $((yearactual-yearusuario))"
