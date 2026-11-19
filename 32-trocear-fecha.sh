#!/bin/bash

echo 'Fecha troceada:'

# Recojo y devuelvo el dia
dia=$(date | cut -d ' ' -f3)
echo "Día: $dia"

# Recojo y devuelvo el mes
mes=$(date | cut -d ' ' -f2)
echo "Mes: $mes"

# Recojo y devuelvo el año
anio=$(date | cut -d ' ' -f6)
echo "Año: $anio"
