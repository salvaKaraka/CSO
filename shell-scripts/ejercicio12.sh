#!/bin/bash
# Solicitamos los dos números
if [ $# -ne 2 ]; then
  echo "ingrese dos numeros separados por un espacio"
  exit 1
else

  num1=$1
  num2=$2

  # Multiplicación
  echo "$num1 x $num2 = $(expr $num1 \* $num2)"
  # Suma
  echo "$num1 + $num2 = $(expr $num1 + $num2)"
  # Resta
  echo "$num1 - $num2 = $(expr $num1 - $num2)"
  # Cual es mayor
  if [ $num1 -gt $num2 ]; then
    echo "$num1 > $num2"
  else
    echo "$num1 < $num2"
  fi
fi
exit 0
