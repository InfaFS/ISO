#!/bin/bash

funcion(){
local param1="$1"
local param2="$2"

echo "Los valores ingresados son $param1 y $param2"

PS3="Seleccione una opacion (1-5): "
options=("+" "-" "*" "%" "Quit")

select option in "${options[@]}"
do
  case $option in
      "+")
      sum=$((param1 + param2))
      echo "$param1 + $param2 = $sum"
      ;;
      "-")
      res=$((param1 - param2))
      echo "$param1 - $param2 = $res"
      ;;
      "*")
      mul=$((param1 * param2))
      echo "$param1 * $param2 = $mul"
      ;;
      "%")
      div=$((param1 / param2))
      echo "$param1 % $param2 = $div"
      ;;
      "Quit")
      echo "Exiting..."
      break
      ;;
      *)
      echo "Error"
      ;;
      esac
done
}

read num1
read num2
funcion $num1 $num2
