#!/bin/bash

cat $1 | while read linea
do
  contador=`cat $2 | grep -c "$linea"`
  echo "$linea: $contador"
done
