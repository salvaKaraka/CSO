#!/bin/bash

dot_sh=()

verArchivo() {
    local archivo="$1"
    local encontrado=0
    for nombre in "${dot_sh[@]}"; do
    	nombre=$(basename "$nombre")
	if [ "$nombre" == "$archivo" ]; then
            echo "Archivo encontrado: $nombre"
            encontrado=1
            break
        fi
    done

    if [ $encontrado -eq 0 ]; then
        echo "Archivo no encontrado"
        exit 5
    fi
}

cantidadArchivos(){
	local cantidad=0
	for i in "${dot_sh[@]}"
	do
		cantidad=$(( cantidad + 1 ))
	done
	echo $cantidad
}

eliminarArchivo(){
	local nombre="$1"
	local actual=""
	local encontrado=0
	
	for (( i=0; i<${#dot_sh[@]}; i++ )); do
		actual="$(basename ${dot_sh[$i]})"
		if [ "$actual" == "$nombre" ]; then
			encontrado=1
			break
		fi
	done
	
	if [ $encontrado -eq 0 ]; then
		echo "Archivo no encontrado"
		exit 10
	fi

	local opcion=""
	echo "desea eliminar $1 completamente?"
	read opcion
	opcion=$(echo "$opcion" | tr '[:upper:]' ':[lower]:')
	if [ "$opcion" == si ]
	then	
		rm "$1"
		unset dot_sh[$i]
		echo "archivo removido"
	fi
}

rutas=$(find /home/salva -name "*.sh")

for ruta in ${rutas[@]}; do
    dot_sh+=("$ruta")
done

verArchivo "ejercicio29.sh"
echo "hay $(cantidadArchivos) archivos"
eliminarArchivo "prueba.sh"
verArchivo "prueba.sh"

exit 0
