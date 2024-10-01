#!/bin/bash

funcion(){

  PS3="Seleccione una opción (1-4): "
  options=("Listar" "DondeEstoy" "QuienEsta" "Quit")

  select option in "${options[@]}"
  do
    case $option in
      "Listar")
        echo "Listando..."
	ls
        ;;

      "DondeEstoy")
        echo "Su ruta actual: "
	pwd
        ;;
      "QuienEsta")
        echo "Usuarios conectados: "
	who
        ;;
      "Quit")
        echo "Saliendo..."
        break
        ;;
      *)
        echo "Opción no válida"
        ;;
    esac
  done
}


funcion
