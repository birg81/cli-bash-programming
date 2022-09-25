#!/bin/bash

clear

if [ $# -ne 0 ]
then
	FILES=""
	
	for FILE in $@
	do
		if [ -e $FILE ]
		then
			FILES="$FILES $FILE"
		fi
	done
	
	tar -cvzf files.tar.gz $FILES
	
	if [ ! -d "backup" ]
	then
		mkdir backup
		echo "Cartella backup creata."
	fi
	
	mv files.tar.gz backup/	
else
	echo "Nessun file da compattare."
fi

echo
