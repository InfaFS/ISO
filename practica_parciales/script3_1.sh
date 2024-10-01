#!/bin/bash

arreglo=($(cat /var/log/Municipios.txt | cut -d" " -f1))

listarMunicipios() {
    for i in "${arreglo[@]}"; do
        echo "$i"
    done
}

cantidadMunicipios() {
    echo "Cantidad de municipios ${#arreglo[@]}"
}

existeMuni() {
    value="$1"
    for i in "${arreglo[@]}"; do
        if [ "$value" = "$i" ]; then
            return 0  # Devuelve 0 si el municipio existe
        fi
    done
    return 1  # Devuelve 1 si el municipio no existe
}

agregarMuni() {
    if [ $# -lt 1 ]; then
        return
    fi

    municipio="$1"
     var="$(existeMuni "$municipio")"
    echo "$var"
    if [ $var -eq 0 ]; then
        echo "El municipio ya existe"
    else
        arreglo+=("$municipio")
   fi
}

listarMunicipios
cantidadMunicipios
agregarMuni "Pepito"
agregarMuni "LaPlata"
existeMuni "LaPampa"
existeMuni "Berisso"
listarMunicipios

