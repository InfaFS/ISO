#!/bin/bash

read value
if [ -d $value ]; then
	echo "directorio $value existe"
	else 
	echo "$value directorio no existe"
fi
