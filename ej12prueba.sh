#!/bin/bash

# Definir una función que lee los parámetros desde la entrada estándar
funcion1() {
  read -p "Ingrese el primer parámetro: " parametro1
  read -p "Ingrese el segundo parámetro: " parametro2
  
  echo "Función 1: Parámetro 1 = $parametro1, Parámetro 2 = $parametro2"
  
  # Llamar a otra función y pasarle los parámetros
  funcion2 "$parametro1" "$parametro2"
}

# Definir otra función que recibe los mismos parámetros
funcion2() {
  local parametro1="$1"
  local parametro2="$2"
  
  echo "Función 2: Parámetro 1 = $parametro1, Parámetro 2 = $parametro2"
}

# Llamar a la primera función
funcion1

