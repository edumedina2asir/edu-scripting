#!/bin/bash

echo 'Procesos del usuario actual ordenados por PID:'

# Listo proceso, filtro las líneas con usuario actual, ordeno por PID y muestro PID y comando
ps aux | grep "$(whoami)" | sort -k2n | awk '{print $2, $11}'
