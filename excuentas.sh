#!/bin/bash

if [ $# -ne 3 ]; then
	echo "Usage error: $0" >&2
	exit 1
fi

fichero=$1
fichero_o=$2
fichero_d=$3

cat $fichero_o | sort -t ':' -k2n > /tmp/$fichero_d


ficherob=`cat $fichero`

numero_u=`cat $fichero_d | tail -n 1 | cut -d ':' -f 2`
numero=$(($numero_u + 1))

for usuario in $ficherob; do
	echo "$usuario:$numero:/home/$usuario:/bin/bash" >> /tmp/$fichero_d
	numero=$(($numero + 1))
done
	

cat /tmp/$fichero_d > $fichero_d

exit 0
