#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Cantidad de parametros invalida"
    exit 1

else
   arreglo=($(who | grep $1 | cut -d" " -f1))
   echo "${arreglo[@]}" 
   
   select opcion in listar eliminar contar salir
   do
   
   case $opcion in
   "listar")
    for i in "${arreglo[@]}"
    do    
    echo "$i"
    done
    ;;
    "eliminar")
    for ((i=0;i<${#arreglo[@]};i++))
    do
    echo "${arreglo[$i]} indice $i"
    done
    echo "Ingrese un indice para eliminar: "
    read entry
    if [ $entry -lt 0 ] || [ $entry -gt ${#arreglo[@]} ]
    then
       echo "Indice no valido"
    else
        unset "arreglo[$entry]"
    fi 
    ;;
    "contar")
    contado="${#arreglo[@]}"
    echo "Cantidad de elementos en el arreglo $contado"
    ;;
    "salir")
    exit 0
    ;;
   esac
   done
fi
