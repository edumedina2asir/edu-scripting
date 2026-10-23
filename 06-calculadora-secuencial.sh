#!/bin/bash
read -p "Dame el primer número: " num1
read -p "Dame el segundo número: " num2
echo "$num1 + $num2 = $(($num1 + $num2))"
echo "$num1 - $num2 = $(($num1 - $num2))"
echo "$num1 * $num2 = $(($num1 * $num2))"
echo "$num1 / $num2 = $(($num1 / $num2))"
