#!/bin/bash

clear

if [ ! -d "backup" ]
then
	mkdir backup
	echo "Directory backup creata..."
fi

read -p "Inserire il nome del file: " NOMEFILE

if [ -f $NOMEFILE ]
then
	cp $NOMEFILE "backup/${NOMEFILE}.bak"
	echo "File ${NOMEFILE}.bak creato nella directory backup."
else
	echo "File non trovato nella directory corrente!"
fi
	
echo
