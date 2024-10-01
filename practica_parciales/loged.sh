#!/bin/bash

echo "Ingrese usuario: "
read usuario

if [ $(who | grep -w $usuario | wc -l) -gt 0 ]
then
   echo "El usuario $usuario esta logeado"
   cantidad=$(ps aux | grep -w $usuario | wc -l)
   echo "Cantidad de procesos en los cuales el usuario $usuario se encuentra involucrado son $cantidad"
else
   echo "No esta logeado"

fi

