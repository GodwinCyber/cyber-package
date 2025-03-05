#!/bin/bash

function MENU()
{
	figlet "WELCOME!!!"
	read -p "Would you like to continue or exit? [C/E]" OPTION
	case $OPTION in
		C)
			figlet "Lets go!!!!"
		;;
		
		E)
			figlet "BYE BYE THEN"
		;;
		esac
}

MENU
