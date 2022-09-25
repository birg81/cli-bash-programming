#!/bin/bash

clear

for FILE in ./*
do
	if [ -f $FILE ]
	then
		echo ${FILE##./}
	fi
done

echo
