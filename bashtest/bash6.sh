#!/bin/bash
echo NON DIMENTICARE DI INSERIRE UN PARAMETRO NUMERICO

case $1 in
	(1) echo "uno";;
	(2) echo "due";;
	(3) echo "tre";;
	(4) echo "quattro";;
	(5) echo "cinque";;
	(6) echo "sei";;
	(7) echo "sette";;
	(8) echo "otto";;
	(9) echo "nove";;
	(10) echo "dieci";;
	(*) echo "Valore non compreso tra 1 e 10";;
esac
exit