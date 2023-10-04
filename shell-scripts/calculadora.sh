#!/bin/bash
# Solicitamos los dos números
if [ $# -ne 3 ]; then
  echo "parametros erroneos"
  exit 1
else

  num1=$1
  op=$2
  num2=$3

  #calcular
  case $op in
	  "+")	
		echo "$num1 $op $num2 = $(expr $num1 + $num2)"
          ;;
	  "-")	
		echo "$num1 $op $num2 = $(expr $num1 - $num2)"
 	  ;;
  	  "x")

		echo "$num1 $op $num2 = $(expr $num1 \* $num2)"
	  ;;
  	  "/")
	  
		echo "$num1 $op $num2 = $(expr $num1 / $num2)"
          ;;
  	  "*")
		  echo "operador invalido"
                  exit 2
          ;;
  esac
fi
exit 0
