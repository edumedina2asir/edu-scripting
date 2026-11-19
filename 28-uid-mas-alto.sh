#!/bin/bash

# Ordeno por columna 3 con k, numéricamente con n y en reversa con r
# Añadí r ya que lo inenté con -r y no surtía efecto, así que quise investigar para estar preparado para la guerra
sort -t: -k3,3nr /etc/passwd | head -1
