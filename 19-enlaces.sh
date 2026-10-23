#!/bin/bash
echo "Contenido de original.txt" > original.txt
ln original.txt enlace_duro
ln -s original.txt enlace_blando
ls -li original.txt enlace_duro enlace_blando
