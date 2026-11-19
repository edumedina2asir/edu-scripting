#!/bin/bash

# Listo el contenido con du de /home, ordeno y muestro los 5 primeros registros.
du -a ~ | sort -k1nr | sed 1d | head -n 5
