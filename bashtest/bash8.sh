#!/bin/bash

for file in $(find ./ -maxdepth 1 -type f|cut -d"/" -f 2)
do
	echo $file","
done

exit