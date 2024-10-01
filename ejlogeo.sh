#!/bin/bash

nombre_de_usuario="$1"

# Ejecutar 'id' con el nombre de usuario y redirigir la salida estándar y de error a /dev/null
id "$nombre_de_usuario" > /dev/null 2>&1

# Verificar el código de salida de 'id'
if [ $? -eq 0 ]; then
    echo "El usuario $nombre_de_usuario existe."
else
    echo "El usuario $nombre_de_usuario no existe."
    exit 1
fi

	if w | grep -q "$usuario"; then
	echo "$nombre_de_usuario is online"
	else
	echo "$nombre_de_usuario is offline"
fi






