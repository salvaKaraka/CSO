#! bin/bash	

if [ ! $# -eq 1 ]
then
	echo "uso: $0 <directorio>"
	exit 1
fi

directorio="$1"

if [ ! -d $directorio ]
then
	echo "no es una ruta valida"
	exit 2
fi

array=()

for archivo in "$directorio"/*; do
	if [ -f $archivo ]; then
		archivo="$(basename "$archivo")"
		array+=("$archivo")
	fi
done

index(){
	echo "ingrese un nombre:"
	read nombre
	for (( i=0 ; i<${#array[*]} ; i++ )); do
		if [ "${array[$i]}" == "$nombre" ]; then
		       echo "$i"	
		       return $i
		       break
		fi
	done
}

delete(){
	echo "para eliminar"
	index
	i=$?
	rm "$directorio"/"${array[$i]}" 
	unset array[$i]
}

printArray(){
	for a in "${array[*]}"; do
		echo $a
	done
}

while true; do
	echo opcion
	read opcion
	case "$opcion"
	in
		"1")
			index
		;;
		"2")
			delete
		;;
		"3")
			printArray
		;;
		"4")
			exit 0
		;;
		*)
			echo "le erraste, pajin"
		;;
	esac
done

exit 0

