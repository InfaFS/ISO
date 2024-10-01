#!/bin/bash

# Verificar si se proporcionaron argumentos
if [ $# -lt 1 ]; then
    echo "Cantidad de parámetros no válida"
    exit 5
else
    contador=0
    for elemento in "$@"; do
        # Verificar si el elemento es un archivo
        if [ -f "$elemento" ]; then
            tar -cvf archivo.tar "$elemento"
            gzip archivo.tar
            rm "$elemento"
        # Verificar si el elemento es un directorio legible
        elif [ -d "$elemento" ] && [ -r "$elemento" ]; then
            tar -cvf archivo.tar "$elemento"
            gzip archivo.tar
        # Verificar si el elemento es un directorio con permisos de escritura
        elif [ -d "$elemento" ] && [ -w "$elemento" ]; then
            rm -r "$elemento"
        else
            let "contador++"
        fi
    done
    echo "La cantidad de archivos o directorios que no están en el sistema es $contador"
fi
i
