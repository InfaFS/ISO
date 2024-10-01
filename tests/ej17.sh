#!/bin/bash

echo "Ingrese un directorio"
read directorio

if [ -d "$directorio" ]; then
	archivos=$(find "$directorio" -type f)

	contador=0
	for archivo in $archivos; do
		if [ -r "$archivo" ] && [ -w "$archivo" ]; then
		let "contador++"
		echo "El usuario $USER tiene acceso de r & w para $archivo"
		
		else 
		echo "El usuario $USER no tiene acceso de r & w para $archivo"		
		fi
	done
	echo "De los archivos en $directorio, el usuario actual $USER tiene permisos de lectura y escritura para $contador de ellos"
	exit 0
else
    echo "No existe el directorio"
    exit 4

fi
