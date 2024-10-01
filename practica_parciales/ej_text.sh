#!/bin/bash
arreglo=()
for elemento in $(find /Users/infa/Desktop/ -type f -name "*.doc")
do
  arreglo+=($(basename $elemento))


done

for elemento in "${arreglo[@]}"
do
echo "$elemento"
done
