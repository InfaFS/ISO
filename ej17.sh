#!/bin/bash

directorio="$1"


# Iterar sobre todos los archivos en el directorio y mostrar sus nombres en mayúsculas
for archivo in "$directorio"/*
do
    
        nombre_en_mayusculas=$(basename "$archivo" | tr 'a-z' 'A-Z')
        echo "$nombre_en_mayusculas"
    
done
