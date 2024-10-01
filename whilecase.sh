#!/bin/bash

#poner un numero
echo "Ingrese un numero"
read numero

contador=1

while [ $contador -le $numero ]; do
	echo $contador
	contador=$((contador + 1))
done
