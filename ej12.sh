#!/bin/bash

funcion1(){
local param1="$1"
local param2="$2"


echo "Funcion 1: parametro1 = $param1 , parametro2 = $param2"

funcion2 "$param1" "$param2" 





}


funcion2(){
local param1="$1"
local param2="$2"

mul=$((param1 * param2))

echo "El resultado de multiplicar $param1 con $param2 es $mul"

sum=$((param1 + param2))

echo "El resultado de sumar $param1 con $param2 es $sum"

res=$((param1 - param2))

echo "El resultado de restar $param1 con $param2 es $res"

if [ $param1 -gt $param2 ]; then
	echo "$param1 es mayot que $param2"
elif [ $param2 -gt $param1 ]; then
	echo "$param2 es mayor que $param1"
else
	echo "son iguales"
fi


}
read valor1
read valor2
funcion1 $valor1 $valor2

