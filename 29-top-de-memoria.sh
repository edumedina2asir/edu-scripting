#!/bin/bash

# Texto explicativo sobre la respuesta del script
echo 'Usuario - PID - Uso de memoria en porcentaje'

# Listo procesos, ordeno por uso de memoria y filtro columnas (añado , para espacio entre columnas)
ps aux | sort -k4 -nr | awk '{print $1, $2, $4"%"}' | head -n 5
