#!/bin/bash

echo 'Total de bytes del directorio actual:'

# Ejecuto ls -l y hago la suma en la variable sum de los valores de la columna 5 (bytes)
# Antes de realizar la suma le indico que solo realice la acción bajo la condición de que la línea empieze por -, ya que si empezara por d sería un directorio
# Después le indico que acabe la secuencia con END para que no se repita al imprimir las líneas.
ls -l | awk '/^-/ {sum = sum + $5} END {print sum}'
