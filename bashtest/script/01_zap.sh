#!/bin/bash

clear

if [ $# -ne 0 ]
then
	for PROC in $@
	do
		PROCPID=$(ps | grep -i "\<$PROC\>")
		PROCPID=$(echo $PROCPID | cut -f1 -d" ")
		if [ -n "$PROCPID" ]
		then
			kill -9 $PROCPID
			echo "Processo $PROC [$PROCPID] ucciso."
		else
			echo "Processo $PROC non trovato."
		fi
	done
else
	echo "Nessun processo da uccidere."
fi

echo
