#!/bin/bash

if [ $# -ne 1]; then
	echo error 
	exit 1
fi

usr=$1

while true; do
	who | grep "$usr" > /dev/null
	if [ $? -eq 0 ]; then
		echo "Usuario $usr logueado en el sistema"
		exit 0
	else
		sleep 10
	fi
done
