#!/bin/bash

clear
read -p "Inserire il primo numero: " NUM1
read -p "Inserire il secondo numero: " NUM2

SOMMA=$((NUM1+NUM2))
SOTTRAZIONE=$((NUM1-NUM2))
MOLTIPLICAZIONE=$((NUM1*NUM2))
QUOZIENTE=$((NUM1/NUM2))
RESTO=$((NUM1%NUM2))

echo $NUM1"+"$NUM2"="$SOMMA
echo $NUM1"-"$NUM2"="$SOTTRAZIONE
echo $NUM1"*"$NUM2"="$MOLTIPLICAZIONE
echo $NUM1"/"$NUM2"="$QUOZIENTE
echo $NUM1"%"$NUM2"="$RESTO
echo
