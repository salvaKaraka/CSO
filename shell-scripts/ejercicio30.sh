#! bin/bash

ruta="$HOME/bin"

test -d "$ruta" || mkdir "$ruta"

archivos_movidos=0

for archivo in *; do
	if test -x "$archivo"; then
		mv "$archivo" "$ruta/"
		echo "Movido: $archivo"
		archivos_movidos=$((archivos_movidos + 1))
	fi
done

echo "se movieron $archivos_movidos archivos a bin"


