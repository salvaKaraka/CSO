#! /bin/bash
#recorre un arreglo de numeros e imprime solo los pares. a su vez, cuenta solo los impares
#e informa la cantidad en pantalla

num=(1 2 3 4 5 6 7 8 9 10)
imp=0

for i in "${num[@]}"
do
	if (( (i % 2) == 0 ));
	then
		echo $i
	else
		((imp++))
	fi
done
echo $imp
exit 0
