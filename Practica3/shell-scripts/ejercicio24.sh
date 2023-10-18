#! /bin/bash
#recorre un arreglo de numeros e imprime solo los pares. a su vez, cuenta solo los impares
#e informa la cantidad en pantalla

num1=(1 2 3 4 5 6 7 8 9 10)
num2=(1 2 3 4 5 6 7 8 9 10)

for (( i = 0; i < "${#num1[@]}" ; i++ ))
do
	echo "la suma de los vectores en la posicion $i es $(( num1[i] + num2[i] ))"
done
exit 0
