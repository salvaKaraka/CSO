#! /bin/bash
#genera array con todos los nombres de usuario del sistema pertenecientes a "users"
#"-b n" retorna el elemento de la posicion n del arreglo, si existe
#"-l" devuelve la longitud del arreglo
#"-i" imprime los elementos del arreglo

users=($(grep "cso2023" /etc/group | cut -d: -f4))

param="$1"

if [ $# -lt 1 ]
then
	echo "faltan parametros"
	exit 1
fi

if [ "$param" == "-b" ]
then
	pos=$2
	if (( pos < ${#users[*]}))
	then
		echo "${users[$pos]}"
	else
		echo inexistente
	fi
elif [ "$param" == "-l" ]
then
	echo "${#users[*]}"
elif [ "$param" == "-i" ]
then
	echo ${users[*]}
elif [ $param == "--help" ]
then
	echo "-b n para ver el usuario en la posicion n del grupo users"
	echo "-l devuelve la cantidad de usuarios en users"
	echo "-i muestra todos los usuarios de users"
else
	echo "parametro no valido, --help para ver la lista de parametros"
fi	

exit 0
