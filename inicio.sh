#!/bin/bash
# Autor: Daniel Sanz
# Fecha: 18/04/23

while true 
do
	clear 
	echo "MENU" 
	echo "----"
	echo "1) CREAR EL CONTROL DE VERSION"
	echo "2) CONFIGURAR EL USUARIO: NOMBRE-EMAIL-PASSWORD"
	echo "3) REALIZAR PRIMER COMMIT"
	echo "4) REALIZAR COMMIT SOBRE EL ULTIMO"
	echo "5) CONFIGURAR EL REPOSITORIO REMOTO"
	echo "6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
	echo "7) SUBIR EL ROPOSITORIO LOCAL AL REMOTO"
	echo "8) SALIR"

	echo
	echo -n "ESCRIBA SU OPCION:  "
	read opcion 

	case $opcion in 
		1)
		clear
		echo "1) CREAR EL CONTROL DE VERSION"
		echo "------------------------------"
		git init
		read -rsp $'\nPress enter to continue...'
		;;
		2)
		clear
		echo "2) CONFIGURAR EL USUARIO: NOMBRE-EMAIL-PASSWORD"
		echo "-----------------------------------------------"
		git config user.name "Danbzz"
		git config user.email "danbz@outlook.com"
		git config user.password 537474Bz
		read -rsp $'\nPress enter to continue...'
		;;
		3)
		clear
		echo "3) REALIZAR PRIMER COMMIT"
		echo     "---------------------"
		git add .
		git commit -m "SNAPSHOT1"
		read -rsp $'\nPress enter to continue...'
		;;
		4)
		clear
		echo  "4) REALIZAR COMMIT SOBRE EL ULTIMO"
		echo      "------------------------------"
		git add .
		git commit --amend -m "SNAPSHOT1"
		read -rsp $'\nPress enter to continue...'
		;;
		5)
		clear
		echo "5) CONFIGURAR EL REPOSITORIO REMOTO"
		echo     "-------------------------------"
		git remote add origin "https://github.com/DanBzz/PROYECTOSCRIPLINUX.git"
		read -rsp $'\nPress enter to continue...'
		;;
		6)
		clear
		echo "6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
		echo     "---------------------------------------------------"
		git branch -M main 
		read -rsp $'\nPress enter to continue...'
		;;
		7)
		clear
		echo "7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
		echo     "-----------------------------------"
		git push -u -f origin main #origin es la ruta que hemos expecificado en la 5)
		read -rsp $'\nPress enter to continue...'
		;;
		8)
		clear
		echo "GRACIAS POR TU VISITA"
		echo "---------------------"
		read -rsp $'\nPress enter to continue...'
		exit 0
		;;
		*)
		clear 
		echo "OPCION INCORRECTA"
		echo "-----------------"
		read -rsp $'\nPress enter to continue...'
		;;
	esac
done