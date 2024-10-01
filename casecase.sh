#!/bin/bash

# Usuario ingresa número
read numero

case $numero in
    [1-9]*)
        echo "Número positivo"
        ;;
    -*)
        echo "Número negativo"
        ;;
    0)
        echo "El número es 0"
        ;;
    *)
        echo "Entrada no válida"
        ;;
esac

