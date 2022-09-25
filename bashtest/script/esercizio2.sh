#!/bin/bash

clear
read -p "Inserire nome utente: " NOME

if [ $LOGNAME = $NOME ]
then
	echo "Benvenuto $NOME"
else
	echo "Nome utente errato!"
fi

echo
