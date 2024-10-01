#!/bin/bash

inicializar() {
    arreglo=()
}

agregar_elem() {
    elem="$1"
    arreglo+=( "$elem" )
}

eliminar_elem() {
    pos="$1"
    # Verificar si la posición es válida
    if [ "$pos" -ge 0 ] && [ "$pos" -lt "${#arreglo[@]}" ]; then
        # Eliminar el elemento en la posición especificada
        unset "arreglo[$pos]"
        echo "Elemento en la posición $pos eliminado."
    else
        echo "La posición especificada ($pos) no es válida."
    fi
}

longitud() {
    longitud="${#arreglo[@]}"
    echo "La longitud del arreglo es $longitud"
}

imprimir() {
    for elemento in "${arreglo[@]}"
    do
        echo "$elemento"
    done
}

inicializar_con_valores() {
    if [ "$#" -eq 2 ]; then
        long="$1"
        valor="$2"
        arreglo=()
        for ((i=0; i<long; i++)); do
            agregar_elem "$valor"
        done
    else
        echo "Se esperan dos parámetros: longitud y valor."
    fi
}

# Ejemplo de uso de las funciones
inicializar
agregar_elem "manzana"
agregar_elem "naranja"
agregar_elem "pera"
longitud
imprimir
eliminar_elem 1
longitud
imprimir
inicializar_con_valores 4 "banana"
longitud
imprimir

