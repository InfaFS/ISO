#!/bin/bash

opciones=("Opcion 1" "Opcion 2" "Opcion 3" "Salir")

PS3="Seleccione una opcion (1-4)"
select opcion in "${opciones[@]}"; do
       case $REPLY in
	1)
	echo "Has seleccionado la opcion 1"
	;;
	2)
	echo "Has seleccionado la opcion 2"
	;;
	3)
	echo "Has seleccionado la opcion 3"
	;;
	4)
	echo "Saliendo..."
	break
	;;
	*)
	echo "Opcion no valida"
	;;
	esac

	done

