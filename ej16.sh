#!/bin/bash

# Verificar si se proporcionó la extensión como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <extensión>"
    exit 1
fi

# Obtener la extensión del argumento
extension="$1"

# Ejecutar 'find' para buscar archivos con la extensión y generar el informe
find /Users/infa/Desktop/practica-shell-script -type f -name "*.$extension" | \
    awk -F/ '{print $NF}' | \
    awk -F. '{print $(NF-1)}' | \
    sort | \
    uniq -c > reporte.txt

echo "Informe generado y guardado en reporte.txt"

