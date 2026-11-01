#!/bin/bash
#Creo el directorio espejo
mkdir -p /bacedu/espejo

#Con el comando rsync, sincronizo mi directorio personal en el directorio espejo
#Uso la opción -a para conservar persmisos y fechas de los ficheros
#La opción --delete elimina el contenido que ya no existe en el directorio original
rsync -a --delete /home/edu/ /bacedu/espejo/
