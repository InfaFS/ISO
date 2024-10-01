#!/bin/bash
echo "Ingrese 2 valores para sumar"
read valor1 
read valor2
resultado=$(expr "$valor1" + "$valor2")
echo "El resultado de sumar $valor1 con $valor2 es $resultado"
