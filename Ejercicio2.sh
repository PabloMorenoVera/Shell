#!/bin/bash
i=0
while [ $i -le 59 ]
do
	echo `ping -c 1 "delta$i"`
	i=$(($i + 1))
done
