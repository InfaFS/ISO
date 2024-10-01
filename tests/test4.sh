#!/bin/bash

echo "Ingrese 2 valores a comparar"
read value1 value2

if [ $value1 -gt $value2 ]; then
   echo "$value1 greater than $value2"
elif [ $value1 -eq $value2 ]; then
    echo "$value1 equals $value2"
else	
    echo "$value1 is less than $value2"
fi
