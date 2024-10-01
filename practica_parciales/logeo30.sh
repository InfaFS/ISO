#!/bin/bash

usuario="$1"
#ponemos who aunque en linux asumimos esta en /etc/passwd
if [ $(who | grep -w $usuario | wc -l) -ne 0 ]
then
   echo "Usuario $usuario existe"
   contador=0
   while [ $contador -ne 30 ]
do
   if [ $(who | grep -w $usuario | wc -l) -ne 0 ]
then
   echo "Actualizando access.$usuario.log..."
   archivo="/Users/$usuario/Desktop/access.$usuario.log"
   echo "$usuario" >> $archivo
   echo "$(date)" >> $archivo
fi
sleep 5
done

else 
   echo "No existe ese $usuario"
   exit 1

fi
