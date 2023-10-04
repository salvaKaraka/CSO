#! /bin/bash

if [ $# -lt 1 ]
then
	echo "faltan parametros"
	exit 1
fi

i=0
noexisten=0

for ruta in $@;
do
	i=$(( $i + 1 ))
	
	if (( (i%2)!=0 )) 
	then
		test -f $ruta && echo " $ruta es un archivo" || test -d $ruta && echo "$ruta es un directorio" || noexisten=$(( noexisten+1 ))
	fi
done

echo "no existen $noexisten archivos"

exit 0
