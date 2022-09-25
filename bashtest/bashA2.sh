#!/bin/bash

if [ $#  == 0 ]
then
	exit 1
fi

if [ ! -d ./backup ]
then
	mkdir ./backup
fi

for f in $@
do
	if [ ! -f $f ]
	then
		echo il file $f non esiste
	else
		tar -cvf ./backup/$f.tar $f
	fi
done

exit