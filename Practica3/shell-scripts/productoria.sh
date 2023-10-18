#! /bin/bash
num=(10 3 5 7 9 3 5 4)

function productoria() {
local resultado=1
for (( i=0; i<${#num[*]}; i++ ))
do
	resultado=$(( resultado * num[i] ))
done
echo $resultado
}

productoria

exit 0
