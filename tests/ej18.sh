#!/bin/bash

inicializar() {

arreglo=()

archivos_doc=$(find $HOME -type f -name "*.doc")

for archivo in $archivos_doc; do
    if [ -f "$archivo" ]; then
	nombre_pelado=$(basename "$archivo")
	arreglo+=("$nombre_pelado")	
    fi	
done

for archivo in "${arreglo[@]}"; do
	echo "$archivo"

	done
}


verArchivo() {

nombre_archivo="$1"
size="${#arreglo[@]}"
indice=0
encontrado=0

while [ $indice -lt $size ] && [ $encontrado -eq 0 ]; do
	if [ "$nombre_archivo" = "${arreglo[$indice]}" ]; then
		let "encontrado++"
	fi
	let "indice++"

done
	
if [ $encontrado -eq 1 ]; then
	echo "Archivo $nombre_archivo encontrado"
else 
	echo "Archivo no encontrado"
	exit 5	

fi


}

cantidad_de_archivos() {

cant="${#arreglo[@]}"

echo "La cantidad de archivos en el arreglo es $cant"


}

eliminar_archivo() {
    nombre_archivo="$1"
    echo "Verificando que el archivo existe en el arreglo..."
    encontrado=0

    # Recorrer el arreglo y verificar si el valor está presente
    for elemento in "${arreglo[@]}"; do
        if [ "$elemento" == "$nombre_archivo" ]; then
            encontrado=1
            break
        fi
    done

    if [ $encontrado -ne 0 ]; then
        echo "Archivo encontrado! ¿Desea eliminar el archivo lógicamente? (Si/No):"
        read answer

        case "$answer" in
            Si|SI|s|S)
                # Eliminar el archivo lógicamente del arreglo
                for i in "${!arreglo[@]}"; do
                    if [ "${arreglo[$i]}" == "$nombre_archivo" ]; then
                        unset "arreglo[$i]"
                    fi
                done
                echo "El archivo $nombre_archivo ha sido eliminado del arreglo."
                ;;
            No|NO|n|N)
                # Eliminar el archivo físicamente
                rm $HOME/"$nombre_archivo"
                echo "El archivo $nombre_archivo ha sido eliminado físicamente."
                ;;
            *)
                echo "Entrada no válida. No se realizaron cambios en el archivo."
                ;;
        esac

    else
        echo "El archivo no existe en el arreglo..."
        exit 10
    fi
}


inicializar
echo "Ingrese un archivo a buscar"
read value
verArchivo "$value"
cantidad_de_archivos
read respuesta
eliminar_archivo "$respuesta"
exit
