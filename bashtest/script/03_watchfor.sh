#!/bin/bash

clear

if [ $# -ne 0 ]
then
	for USER in $@
	do
		CHECK=$(cat /etc/passwd | grep "\<$USER\>")
		if [ -z "$CHECK" ]
		then
			echo "$USER: utente non presente."
		else
			LOGINFO=$(finger $USER | head -n 3 | tail -n +3)
			echo -n "$USER: "
			case ${LOGINFO:0:1} in
				O)	echo "login effettuato il ${LOGINFO:9:10} alle ore ${LOGINFO:20:5}.";;
				L)	echo "ultimo login effettuato il ${LOGINFO:11:10} alle ore ${LOGINFO:22:5}.";;
				N)	echo "login mai effettuato.";;
			esac
		fi
	done
else
	echo "Nessun utente da identificare."
fi

echo
