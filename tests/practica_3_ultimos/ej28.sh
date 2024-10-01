#!/bin/bash

direct="$1"

if [ -d "$direct" ]; then
    contador=0
    for archivo in "$direct"; do
        if [ -f "$archivo" ] && [ -w "$archivo" ] && [ -r "$archivo" ]; then
            let "contador++"
        fi
    done
    echo "Cantidad de archivos que el usuario tiene permisos de lectura y escritura: $contador"
else
    echo "El directorio \"$direct\" no existe."
    exit 4
fi




