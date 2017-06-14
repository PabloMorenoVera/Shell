#! /bin/bash

echo Programa que cuenta desde el 1 hasta el número introducido.

cont=0
echo Hasta qué número quieres contar:
read numero
echo Comenzamos:

while [[ $cont -le $numero ]]; do
  echo $cont
  cont=$(($cont+1))
done
