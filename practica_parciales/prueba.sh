#!/bin/bash

read entry

if [ $(ls /Users/infa/Desktop | grep -w "$entry" | wc -l) -ne 0 ] && [ -d "/Users/infa/Desktop/$entry" ] 
then
    echo "Directorio existente"
elif
[ $(ls /Users/infa/Desktop | grep -w "$entry" | wc -l) -ne 0 ] && [ -f "/Users/infa/Desktop/$entry" ]
then
	echo "Archivo existente"

fi
