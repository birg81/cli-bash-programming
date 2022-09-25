#!/bin/bash

mkdir miadir

for k in {1..5}
do
	touch ./miadir/file_$k
done

exit