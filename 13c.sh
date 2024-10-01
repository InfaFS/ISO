#!/bin/bash

# Verificar si se proporcionó un nombre de archivo como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_archivo_o_directorio>"
    exit 1
fi

nombre="$1"

# Verificar si el archivo o directorio existe
if [ -e "$nombre" ]; then
    # Verificar si es un archivo regular
    if [ -f "$nombre" ]; then
        echo "$nombre es un archivo."
    # Verificar si es un directorio
    elif [ -d "$nombre" ]; then
        echo "$nombre es un directorio."
    else
        echo "$nombre existe pero no es ni un archivo ni un directorio."
    fi
else
    # Crear un directorio con el nombre proporcionado
    mkdir -p "$nombre"
    echo "Se creó el directorio $nombre."
fi

