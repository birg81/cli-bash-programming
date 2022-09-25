#!/bin/bash

if [ ! -d ./miadir ]
then
	echo la cartella miadir non esiste - la creo
	mkdir miadir
fi

echo inscerisci un valore
read n

for ((k=1; k<=$n; k++))
do
	touch ./miadir/file_$k
done

exit