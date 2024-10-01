
if [ $# -lt 1 ]; then
        echo "Parametros incorrectos"
        exit 1
fi
arreglo=($(who | grep -u $1 | cut -d" " -f1))
select opcion in listar eliminar contar salir
do
        case $opcion in
        "listar")
                for user in "${arreglo[@]}"
                do
                        echo "$user"
                done
        ;;
        "eliminar")
                for ((i=0;i<"${#arreglo[@]}";i++))
                do
                        echo "$i $arreglo[$i]"
                done
                echo "Ingrese numero a eliminar"
                read num
                if [ $num -ge 0 ]; then
                        if [ $num -lt "${#arreglo[@]}" ]; then
unset "arreglo[$num]"
                        fi
                else
                        echo "Indice invalido"
                fi
        ;;
        "contar")
                echo "${#arreglo[@]}"
        ;;
        "salir")
                exit 0
        ;;
        esac
done
