#!/bin/bash

recorrido(){
vector=(1 2 3 4 5 6 7 8 9)
length=${#vector[@]}
contador=0
for ((i=0; i<length; i++))
do
	num=${vector[i]}
	if [ $((num % 2)) -eq 0 ]; then
	   echo "$num"
	else
	   contador=$((contador + 1))	   
	fi

done
echo "La cantidad de numeros impares es $contador "

}

recorrido
