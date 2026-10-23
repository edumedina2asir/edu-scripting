#!/bin/bash
ls -l /etc > listado.txt
ls /root 2> errores.txt
wc -l listado.txt
wc -l errores.txt
