#!/bin/bash

echo 'Usuarios que usan bash como shell: '

#Filto los usuarios que usan bash

cat /etc/passwd | grep "bash"
