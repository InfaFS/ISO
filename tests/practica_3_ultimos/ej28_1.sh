#!/bin/bash

# Verificar que se haya proporcionado un directorio como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

directorio="$1"

# Verificar si el directorio existe
if [ ! -d "$directorio" ]; then
    echo "El directorio \"$directorio\" no existe."
    exit 4
fi

# Inicializar contadores
archivos_con_permisos=0
archivos_totales=0

# Iterar sobre los archivos en el directorio
for archivo in "$directorio"/*; do
    if [ -f "$archivo" ]; then
        archivos_totales=$((archivos_totales + 1))
        if [ -r "$archivo" ] && [ -w "$archivo" ]; then
            archivos_con_permisos=$((archivos_con_permisos + 1))
        fi
    fi
done

# Informar los resultados
echo "Cantidad de archivos con permisos de lectura y escritura: $archivos_con_permisos"
echo "Cantidad total de archivos en el directorio: $archivos_totales"

