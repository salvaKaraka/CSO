#!/bin/bash
#listar, donde estoy y quien esta
select opcion in listar DondeEstoy QuienEsta
do
	case $opcion in
	"listar")
		echo $(ls)
	;;
	"DondeEstoy")
		echo $PWD
	;;
	"QuienEsta")
		echo $(who)
	;;
	*)
		echo error
		exit 1
	;;
	esac
done
exit 0
