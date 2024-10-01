#!/bin/bash

if [ "$#" -lt 1 ]
then
   echo "cantidad de argumentos invalida"
   exit 1

else
   cantidad=0
   indice=1
   for i in "$@"
do
  if [ $(($indice % 2)) -ne 0 ]
then
  if [ -e "$i" ] && [ -d "$i" ]
then
     echo "El archivo existe y es un directorio"
  elif [ -e "$i" ] && [ -f "$i" ] 
then
  echo "El archivo existe y es un archivo"
  else
  echo "El archivo no existe en el sistema"
  ((cantidad++))
  fi 
  fi

((indice++))

done
echo "Cantidad de archivos inexistentes $cantidad"
fi


