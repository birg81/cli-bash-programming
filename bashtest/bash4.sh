#!/bin/bash

if [ ! -d "backup" ]
then
	echo non esiste, la creo!
	mkdir ./backup
else
	echo esistie!
fi

echo inserisci nome file
read filename

if [ -f $filename ]
then
	echo $filename esiste ora ne facciamo il back
	cp $filename ./backup/$filname.bak
else
	echo $filename non esiste
fi

exit