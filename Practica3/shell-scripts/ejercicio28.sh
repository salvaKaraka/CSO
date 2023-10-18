#! bin/bash

if [ $# -ne 1 ]; then
	echo "Uso; $0 <directorio>"
	exit 1
fi

directorio=$1

lectura=0
escritura=0

if ! test -e $directorio
then
	echo "directorio no oncontrado"
	exit 4
fi

printf "%-30s %-10s %-10s\n" "Nombre" "Lectura" "Escritura"
echo "--------------------------------------------------"

for archivo in "$directorio"/*; do
	if test -f "$archivo"
	then
		nombre=$(basename "$archivo")
		if test -r "$archivo"
		then
			lectura=$(( lectura +1 ))
			tiene_lectura="Si"
		else
			tiene_lectura="No"
		fi
		if test -w "$archivo"
		then
			escritura=$(( escritura + 1 ))
			tiene_escritura="Si"
		else
			tiene_escritura="No"
		fi
	fi
	printf "%-30s %-10s %-10s\n" "$nombre" "$tiene_lectura" "$tiene_escritura"
done

printf "%-30s %-10s %-10s\n" "Total" "$lectura" "$escritura"

exit 0

