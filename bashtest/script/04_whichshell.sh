#!/bin/bash

clear

if [ $# -ne 0 ]
then
	for USER in $@
	do
		USERINFO=$(cat /etc/passwd | grep "\<$USER\>")
		if [ -z "$USERINFO" ]
		then
			echo -e "$USER:\n\tutente non presente"
		else
			echo "$USER:"
			echo -e "\tLogin: $(echo $USERINFO | cut -f1 -d:)"
			echo -e "\tNome: $(echo $(echo $USERINFO | cut -f5 -d:) | cut -f1 -d,)"
			echo -e "\tShell: $(echo $USERINFO | cut -f7 -d:)"
		fi
	done
else
	echo "Nessun utente da visualizzare"
fi

echo
