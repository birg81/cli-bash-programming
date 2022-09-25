#!/bin/bash

clear

if [ $# -eq 1 -a ! -d $1 ]
then
	mkdir $1
	for X in $(seq 1 5)
	do
		touch $1/file_$X
	done
else
	echo "La directory indicata come parametro è già esistente oppure non è stato indicato un nome valido"
fi

echo
