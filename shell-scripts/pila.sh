#! /bin/bash
#esta estructura simula el comportamiento de una pila

pila=()

function push() {
	#agregar al final
	#pila[$cantidad]=$1
	pila+=($1)
	echo "elemento agregado"
}

function pop() {
	#sacar el tope de la pila
	local cantidad=${#pila[*]}
	if (( cantidad != 0 ))	
	then
		local tope=${pila[$cantidad - 1]}
		unset pila[$cantidad - 1]
		echo $tope
	else
		echo "la pila esta vacia"
	fi
}

function length() {
	#longitud de la pila
	echo ${#pila[*]}
}

function print() {
	#imprime la pila
	echo ${pila[*]}
}

opcion=1

while ((opcion != 0))
do

cat << menu
1-push
2-pop
3-length
4-print
0-exit
menu
	
read -p "elija una opcion:" opcion

	case $opcion in
		1)
		  echo "ingrese el numero a agregar a la pila"
		  read elemento
		  push $elemento
		;;
		2)
		  echo "se retiro el elemento: $(pop)"
		;;
		3)
		  echo "la longitud de la pila es: $(length)"
		;;
		4)
		  print
		;;
		0)
		  echo terminando...
		;;
		*)
		  echo error
		;;
	esac
	read -p "presione enter para continuar..."
	clear
done
exit 0
