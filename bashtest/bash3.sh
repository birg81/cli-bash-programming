#!/bin/bash

echo inserisci un numero tra 1 e 10
read n

if [[ "$n"  -ge 1 ]] && [[ "$n" -le 10]];
then
	echo "giusto"
else
	echo "sbagliato"
fi

exit