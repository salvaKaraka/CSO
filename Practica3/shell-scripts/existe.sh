#!/bin/bash
#verifica si un archivo existe y si no lo hace crea un directorio con ese nombre
if [ $# -ne 1 ]; then
	echo error
	exit 1
fi

if [ -f $1 ]; then
  	echo "archivo"
elif [ -d $1 ]; then
  	echo "directorio"
else
 	 mkdir $1
fi
exit 0
