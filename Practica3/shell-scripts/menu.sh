#!/bin/bash

while true; do
    clear
    echo "MENU DE COMANDOS"
    echo "-----------------"

    # Lista de opciones generadas automáticamente a partir de los scripts en el directorio actual
    opciones=($(ls -1 *.sh 2>/dev/null | sort))

    # Agregar la opción para salir
    opciones+=("Salir")

    # Mostrar las opciones numeradas
    select opcion in "${opciones[@]}"; do
        if [[ "$opcion" == "Salir" ]]; then
            echo "Saliendo del menú..."
            exit 0
        elif [[ -n "$opcion" ]]; then
            read -p "Ingrese los parámetros para $opcion (o presione Enter para omitir): " parametros
            if [[ -n "$parametros" ]]; then
                # Ejecutar el script seleccionado con los parámetros ingresados
                ./"$opcion" $parametros
            else
                # Ejecutar el script seleccionado sin parámetros
                ./"$opcion"
            fi
            break
        else
            echo "Opción no válida. Por favor, elija una opción válida."
        fi
    done

    read -p "Presione Enter para continuar..."
done

