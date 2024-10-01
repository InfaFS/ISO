#!/bin/bash

inicializar() {
    arreglo=()
}

agregar_elem() {
    var="$1"
    arreglo+=("$var")
}

eliminar_elem() {
    pos="$1"
    indice=0

    for i in "${arreglo[@]}"; do
        if [ $indice -eq $pos ]; then
            unset "arreglo[$pos]"
            break
        fi
        ((indice++))
    done
}

longitud() {
    echo "${#arreglo[@]}"
}

imprimir() {
    echo "${arreglo[@]}"
}

inicializar
agregar_elem 1
agregar_elem "pepe"
agregar_elem 2
agregar_elem 3
longitud
imprimir
eliminar_elem 1
imprimir

