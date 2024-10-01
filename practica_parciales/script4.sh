#!/bin/bash

if [ $# -lt 1 ] || ! [ -d $1 ]
then
exit 1
fi

echo "El directorio $1 existe"
for i in $@ 
do
if ! [ -e $i ] 
then
echo "El archivo $i no existe"
elif [ -f $i ]
then
   echo "$i es un archivo"
   if [ -x $i ]
   then
   echo "Adicionalmente hay permisos de ejecucion en el archivo"
   fi
elif [ -d $i ]
then
   echo "$i es un directorio"
   if [ -w $i ]
   then
   echo "Adicionalmente hay permisos de escritura"
   fi
fi

done



