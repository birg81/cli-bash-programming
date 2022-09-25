#!/bin/bash

clear

if [ $# -ne 1 ]
then
	echo "Indicare la directory da creare come parametro"
	exit 1
else
	if [ ! -d $1 ]
	then
		mkdir $1
		echo "Directory $1 creata."
	fi
	read -p "Inserire il numero di file da creare in $1: " NUM
	for X in $(seq 1 $NUM)
	do
		touch $1/file_$X
		echo "File $1/file_$X creato."
	done
fi

echo
