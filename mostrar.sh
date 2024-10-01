#!/bin/bash
#siempre los tengo que comentar
#porque sino despes me olvido
echo "Introduzca su nombre y apellido: "
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es:"
whoami
echo "Su directorio actual es:" 
pwd
echo "Informacion sobre el espacio del disco"
df -h
