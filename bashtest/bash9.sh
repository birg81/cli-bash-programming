#!/bin/bash

if [ $# -eq 0 ]
then
	echo "NON HAI INSERITO ARGOMENTI"
	exit 1
else
	echo "hai inserito "$#" parametri"
fi


if [ ! -d "$HOME/old" ]
then
	echo "NON ESISTE - la creo"
	mkdir $HOME/old
else
	echo "ESISTE"
fi

for k in $@
do
	if [ ! -f $k ]
	then
		echo il file $k non esiste, quindi non lo posso spostare
	else
		echo sto per spostare il file $k in $HOME/old
		mv $k $HOME/old/
	fi
done

exit