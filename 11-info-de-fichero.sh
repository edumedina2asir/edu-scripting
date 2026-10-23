#!/bin/bash
read -p "Elige un fichero: " fichero
ls -lh $fichero
file $fichero
