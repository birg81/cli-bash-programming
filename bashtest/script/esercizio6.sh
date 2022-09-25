#!/bin/bash

clear

read -p "Inserire un valore compreso tra 1 e 10: " NUM

case "$NUM" in
	[1-9] | 10 )	echo "Il valore di x è $NUM";;
	* )				echo "Il valore non è compreso nell'intervallo indicato!";;
esac

echo
