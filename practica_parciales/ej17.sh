#!/bin/bash


arreglo=()

for elemento in $(cat /etc/passwd | cut -d: -f1)
do

arreglo+=("$elemento")

done

for elemento in "${arreglo[@]}"
do

echo "$elemento"

done


existe() {

user="$1"

for element in "${arreglo[@]}"
do
  if [ $element = $user ]
  then
  
  echo "Se retorna 0"	
  return 0
  

  fi

	
done
echo "Se retorna 1"
return 1

}

eliminar() {

eliminalo="$1"
indice=0
for i in "${arreglo[@]}"
do
  
  if [ $eliminalo = $i ]
     then
     unset arreglo[$indice]
     echo "Se retorna 2"
     return 2

  fi
  let "indice++"
done



}

usuarios_con_patron() {
patron="$1"

for i in "{arreglo[@]}"
do
  echo "$i" | grep $1
done


}


read entry
existe "$entry"
read entry_2
eliminar "$entry_2"
read entry_3
usuarios_con_patron "$entry_3" 
