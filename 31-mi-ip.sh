#!/bin/bash

echo 'IP principal del equipo: '

# Recojo la ip principal con hostname -I y muestro la columna 1 para obtener la principal
# Lo hago de esta manera para que sirva en cualquier equipo con más direcciones
hostname -I | awk '{print $1}'
