#! /bin/bash

echo Hay que introducir dos números.

echo La suma de $1 y $2 es $(($1+$2))
echo La resta de $1 y $2 es $(($1-$2))
echo La multiplicación de $1 y $2 es $(($1*$2))
echo la division de $1 y $2 es $(($1/$2))

echo forma de hacer operaciones es con "bc".

echo La suma de $1 y $2 es
echo "$1 + $2" | bc
echo La resta de $1 y $2 es
echo "$1 - $2" | bc
echo La multiplicación de $1 y $2 es
echo "$1 * $2" | bc
echo la division de $1 y $2 es
echo "$1 / $2" | bc
