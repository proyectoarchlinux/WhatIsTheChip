#!/usr/bin/env bash

#Licencia GNU/GPL
#FUNCION MENU
menu(){
    echo ""
    echo "                       Escrito por Proyectoarchlinux"
    echo ""
    echo "                             What Is The Chip"
    echo ""
    echo "      1) \e[1;31mAMD\e[0m"
    echo "      2) \e[1;32mNVIDIA\e[0m"
    echo ""
    echo "      3) SALIR"
    echo ""
    echo "     ***Selecciona una opción***"
    echo ""
}

echo "What is it Chip"
echo
echo

#OPCIONES
opt=0
opt1="0"

echo

#MENU
until [ $opt -eq 3 ]
  do
    case "$opt" in
      1)
        echo ""
        echo "              Escriba la matricula de chip o gpu a buscar"
        echo "                      (Enter para mostrar listado)"
        echo ""
        read opt1
        clear
        echo ""
        cat AMD | grep "$opt1"
        echo ""
        echo "Enter para continuar"
      ;;
      2)
        echo ""
        echo "              Escriba la matricula de chip o gpu a buscar"
        echo "                      (Enter para mostrar listado)"
        echo ""
        read opt1
        clear
        echo ""
        cat NVIDIA | grep "$opt1"
        echo ""
        echo "Enter para continuar"
      ;;
      *)
        clear
        menu
      ;;
    esac
    read opt
  done
