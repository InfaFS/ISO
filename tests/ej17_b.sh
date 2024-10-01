#!/bin/bash

cantidad="$#"

if [ $cantidad -gt 0 ]; then
cont=0
for i in "$@"; do
if [ ! -f "$i" ] && [ ! -d "$i" ]; then
 let "cont++"
fi
if [ $(($i % 2)) -ne 0 ]; then
	if [ -f "$i" ]; then
	echo " $i existe y es un archivo"
	elif [ -d "$i" ]; then
	echo " $i existe y es u directorio"
	else
	echo "$i no es valido"
	fi

fi


done
echo "La cantidad de archivos que no existen es $cont"

else
	echo "Ingrese por lo menos un parametro."

fi


