#!/bin/bash

contador=0;
inex=0;
for parametro in "$@"; do
    contador=$(contador + 1)
    if [ $((contador % 2)) -ne 0 ]; then
    	if [ -e "$parametro" ]; then
	echo "La ruta $parametro existe"
	if [ -d "$parametro" ]; then
	echo "$parametro es un directorio"
	else
	echo "$parametro es un archivo"
#!/bin/bash

contador=0
inex=0

for parametro in "$@"; do
    contador=$((contador + 1))
    
    if [ $((contador % 2)) -ne 0 ]; then
        if [ -e "${parametro}" ]; then
            echo "La ruta ${parametro} existe."
            if [ -d "${parametro}" ]; then
                echo "${parametro} es un directorio."
            else
                echo "${parametro} es un archivo."
            fi
        else
            inex=$((inex + 1))
            echo "La ruta ${parametro} no existe."
        fi
    fi
done

echo "Número de argumentos que no existen: $inex"
	fi
	else
	    inex=$((inex + 1))	
	fi

    fi

done
