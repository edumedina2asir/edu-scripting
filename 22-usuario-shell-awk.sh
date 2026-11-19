#!/bin/bash

#Cojo usuarios y shell de /etc/passwd
awk -F: '{print $1 $7}' /etc/passwd
