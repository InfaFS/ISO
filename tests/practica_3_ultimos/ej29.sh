#!/bin/bash


verArchivo() {

entry="$1"
indice=0

for elemento in "${arreglo[@]}"
do
  if [ $entry = $elemento ]
then
  echo "$elemento encontrado"
  indice=1
  break
fi
done
if [ $indice -eq 0 ]
then
echo "Error archivo no encontrado"
exit 5
fi




}

cantidadArchivos() {

long="${#arreglo[@]}"

echo "Cantidad de archivos $long "


}



archivos=$(find $HOME -name "*.pepe")
arreglo=()

for elemento in $archivos
do
meter="$(basename $elemento)"
arreglo+=("$meter")
done

for i in "${arreglo[@]}"
do
	echo $i
done


read a
verArchivo "$a"

