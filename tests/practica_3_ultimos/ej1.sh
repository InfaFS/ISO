#!/bin/bash

arreglo=()
direc="/etc"
for elemento in $(find "$direc" -name "*.conf")
do
	variable="$(basename "$elemento")"
	arreglo+=("$variable")
echo "$elemento"
done

for elemento in "${arreglo[@]}"
do
echo "$elemento"
done
