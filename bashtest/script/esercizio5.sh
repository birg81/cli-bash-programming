#!/bin/bash

clear

if [ $# -ne 2 ]
then
	echo "Indicare due valori come parametri dello script"
else
	SOMMA=$(($1+$2))
	SOTTRAZIONE=$(($1-$2))
	MOLTIPLICAZIONE=$(($1*$2))
	QUOZIENTE=$(($1/$2))
	RESTO=$(($1%$2))

	echo $1"+"$2"="$SOMMA
	echo $1"-"$2"="$SOTTRAZIONE
	echo $1"*"$2"="$MOLTIPLICAZIONE
	echo $1"/"$2"="$QUOZIENTE
	echo $1"%"$2"="$RESTO
fi

echo
