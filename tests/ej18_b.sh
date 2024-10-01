#!/bin/bash

inicializar() {
    array=()
}

agregar_elem() {
    var="$1"
    array+=("$var")
}

eliminar_elem() {
    pos="$1"

    for ((i=0;i<"${#array[@]}";i++)); do
	if [ $i -eq $pos ]; then
	unset "array[i]"
	fi
    done

    # Reconstruir el vector eliminando elementos nulos
    array=("${array[@]}")
}

longitud() {
    long="${#array[@]}"
    echo "Longitud: $long"
}

imprimir() {
    for i in "${array[@]}"; do
        echo "$i"
    done
}

inicializar_con_valores() {
    array=()
    size="$1"
    elemento="$2"

    for ((i = 0; i < size; i++)); do
        array+=("$elemento")
    done
}

# Ejemplo de uso:
inicializar_con_valores 5 "Perez"
imprimir
echo "/////////////"
agregar_elem "Jose"
imprimir
echo "/////////////"
eliminar_elem 5
echo "/////////////"
imprimir


