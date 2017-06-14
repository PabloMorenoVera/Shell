#! /bin/bash

echo Hay que introducir dos numeros como argumentos

if test $1 -eq $2 ; then
  echo $1 es igual a $2
else
  if test $1 -lt $2; then
    echo $1 es menor que $2
  else
    echo $1 es mayor que $2
  fi
fi
