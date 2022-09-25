#!/bin/bash

clear
read -p "Inserire un numero: " NUM

if [ $NUM -ge 1 -a $NUM -le 10 ]
then
	echo $((NUM*2))
else
	echo "Valore errato!"
fi

echo
