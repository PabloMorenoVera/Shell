#! /bin/bash

echo Programa que lee de la entrada estándar y le escribe por la salida estándar.
echo Para salir del programa escriba: Salir.

while [[ $palabra != "Salir" ]]; do
  echo Introduce una palabra:
  read palabra

  echo La palabra introducida es $palabra
done
