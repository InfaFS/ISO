#!/bin/bash

num=(10 3 5 7 9 3 5 4)

productoria(){
longitud=${#num[@]}
mul=1
for ((i=0;i<longitud; i++))
do
  valor="${num[i]}"
  mul=$((mul * valor))
done

echo "El producto es $mul"

}
productoria
