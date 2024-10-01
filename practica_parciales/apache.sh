#!/bin/bash

contador=0

while [ $contador -lt 10 ]
do
  if [ $(ps aux | grep "apache" | wc -l) -ne 0 ]
then
  echo "Apache corriendo"
  ((contador++))


fi
echo "Descansando..."
sleep 5

done

echo "Se encontro apache corriendo $contador veces"
exit 50
