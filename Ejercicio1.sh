#!/bin/bash
presentados=`cat $1 | wc -l`
echo "Hay $presentados alumnos presentados"
aptos=`cat $1 | grep -c -v "no apto"`
echo "Hay $aptos alumnos aprobados"
