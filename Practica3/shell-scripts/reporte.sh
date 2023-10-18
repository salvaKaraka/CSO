#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <extensión>"
    exit 1
fi

extension="$1"
reporte="reporte.txt"

# Utilizamos find para buscar archivos con la extensión especificada en el directorio $HOME del usuario.
# Luego, pasamos los resultados a través de tuberías para extraer los nombres de usuario, contarlos y almacenarlos en reporte.txt.
find "$HOME" -type f -name "*.$extension" -exec dirname {} \; | cut -d'/' -f3 | sort | uniq -c > "$reporte"

echo "Reporte generado en $reporte"

