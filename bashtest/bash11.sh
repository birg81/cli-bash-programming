#!/bin/bash

if [ ! -d ./miadir ]
then
	echo la cartella miadir non esiste - la creo
	mkdir miadir
fi

echo inscerisci un valore
read n

k=1
while [ $k -le $n ]
do
	touch ./miadir/file_$k
	k=$(( $k + 1 ))
done

exit