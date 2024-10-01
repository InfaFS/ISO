#!/bin/bash

contador=0

while [ $contador -ne 10 ]; do
	 if ps aux | grep -q "[a]pache2"; then
        echo "Apache está en ejecución."
	let "contador++"
	fi
	sleep 5
done

echo "Se registraron $contador veces que apache se ejcuto,saliendo..."
exit 50
