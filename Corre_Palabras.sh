#! /bin/bash

echo programa que recorre las palabras de una frase y las imprime.

echo Qué frase quieres recorrer:
read frase

for i in $frase; do
  echo $i
done
