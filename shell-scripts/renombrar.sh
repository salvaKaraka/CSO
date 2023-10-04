#!/bin/bash
# renombrar archivos parametros: ruta , modo, cadena
if [ $# -ne 3 ]; then
    echo "Uso: $0 <directorio> [-a|-b] <CADENA>"
    exit 1
fi

ruta="$1"
modo="$2"
cadena="$3"

if [ ! -d "$ruta" ]; then
    echo "El directorio $ruta no existe."
    exit 2
fi

case "$modo" in
    "-a")
        for archivo in "$ruta"/*; do
            if [ -f "$archivo" ]; then
		 mv "$archivo" "${archivo}${cadena}"
            fi
        done
        ;;
    "-b")
        for archivo in "$ruta"/*; do
            if [ -f "$archivo" ]; then
		    nombre=$(basename "$archivo")
		mv "$archivo" "$ruta/${cadena}${nombre}"
            fi
        done
        ;;
    *)
        echo error
        exit 3
        ;;
esac
exit 0
