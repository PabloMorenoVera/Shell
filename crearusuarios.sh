#!/bin/bash

#Programa correspondiente al examen de Enero 2015

if [[ $# != 3 ]];then
	echo "$0 [nuevos-usuarios.txt] [passwd.txt] [passwd_final.txt]"

elif [[ -e "$1" ]]; then
	if [[ -e "$2" ]]; then

		#numero=$(cut -d: -f 2 $2 | sort -n | tail -n 1)
		numero=$(grep -o '[0-9]*' $2 | sort -n | tail -1)

		while read linea
		do
			echo $linea >> $3
		done < $2

		while read nombre
		do
			if [[ "$nombre" != "" ]]; then
				numero=`expr $numero + 1`
				echo "$nombre:$numero:/home/$nombre:/bin/bash" >> $3
			fi

		done < $1 2> /dev/null
	else
		echo "Error al abrir el fichero $2"
	fi
else
	echo "Error al abrir el fichero $1"
fi