#!/bin/bash

clear

if [ $# -ne 0 ]
then
	if [ ! -d $HOME/old ]
	then
		mkdir $HOME/old
		echo "Directory $HOME/old creata."
	fi
	echo "I seguenti file verranno spostati nella directory $HOME/old: $*"
	for FILE in $@
	do
		if [ -f $FILE ]
		then
			echo "Spostamento del file $FILE..."
			cp $FILE $HOME/old/
		else
			echo "Impossibile spostare $FILE in quanto non presente nella directory"
		fi
	done
	echo "Tutti i file sono stati spostati."
else
	echo "Indicare come parametro almeno un file da spostare."
	exit 1
fi

echo
