#! /bin/bash

presentados=`cat $1 | wc -l`
echo Hay $presentados alumnos presentados.

aprobados=`cat $1 | grep -c "no apto"`
echo Hay $aprobados alumnos aprobados.

cat $1 | while read linea; do
  nombre=`echo "$linea" | cut -d " " -f1`
  nota=`echo "$linea" | cut -d " " -f2`
  fichero="$nombre.txt"
  echo "Hola $nombre, tu nota es: $nota" > "$fichero"
  echo "En tu clase se han presentado $presentados alumnos y han aprobado $aprobados." >> "$fichero"
done
