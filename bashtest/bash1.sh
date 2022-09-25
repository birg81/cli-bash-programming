#!/bin/bash
#BASH es1
echo "inserisci A:"
read A
echo "inserisci B:"
read B


echo Somma: $((A + B))
echo Differenza: $((A - B))
echo Moltiplicaz: $((A * B))
echo Rapp $((A / B))
echo Resto $((A % B))

exit
