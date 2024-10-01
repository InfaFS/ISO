#!/bin/bash



arreglo=($(cat /var/log/Municipios.txt | cut -d" " -f1))


listarMunicipios() {

for i in "${arreglo[@]}"
do
  echo "$i"

done

}

cantidadMunicipios(){

echo "Cantidad de municipios ${#arreglo[@]}"

}

existeMuni() {
value="$1"

for i in "${arreglo[@]}"
do
  if [ $value = $i ]
then
  echo "Se encontro $i"
  return 0
fi
done
return 1

}

agregarMuni() {
if [ $# -lt 1 ]
then
return
fi

municipio="$1"


if [ $(existeMuni $municipio) -eq 0 ]
then
    arreglo+=("$municipio")
else
   echo "El municipio ya existe"
fi
}


listarMunicipios
cantidadMunicipios
agregarMuni
agregarMuni "Pepito"
agregarMuni "LaPlata"
existeMuni "LaPampa"
existeMuni "Berisso"
listarMunicipios
