#!/bin/bash
echo "Ingrese un valor:"
read valor1
if ((valor1 > 0)); then
   echo "El numero es positivo"
elif ((valor1 < 0)); then 
   echo "wtf numero negativo??"
else
   echo "El numero es 0"
fi
