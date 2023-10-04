#! bin/bash

function inicializar(){
	arreglo_vacio=();
	echo "arreglo vacio creado"
}

function agregar_elem(){
	if [ $# -ne 1 ]
	then
		echo "cantidad de parametros incorrecta"
	else
		arreglo_vacio+=("$1")
	fi
}

function eliminar_elem(){
	if [ $# -ne 1 ]
	then
		echo "cantidad de elementos invalida"
	else
		if [ ${#arreglo_vacio[*]} -gt $1 ] && [ $1 -ge 0 ]
		then
			arreglo_vacio=("${arreglo_vacio[*]:0:$1}" "${arreglo_vacio[*]:(($1+1))}")
		else
			echo "posicion no valida"
		fi
	fi
}

function longitud(){
	echo ${#arreglo_vacio[*]}
}

function imprimir(){
	for elemento in "${arreglo_vacio[*]}"; do
		echo $elemento
	done
}

function inicializar_con_valores(){
	for (( i=0; i<$1 ; i++ )); do
		arreglo_vacio[$i]="$2"
	done
}

# Ejemplo de uso

inicializar
agregar_elem 5
agregar_elem 10
agregar_elem 15
imprimir

eliminar_elem 1
imprimir

echo "Longitud del arreglo: $(longitud)"

inicializar_con_valores 4 7
imprimir
exit 0
