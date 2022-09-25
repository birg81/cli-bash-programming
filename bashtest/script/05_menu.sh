#!/bin/bash

function zap {
	if [ $# -ne 0 ]
	then
		for PROC in $@
		do
			PROCPID=$(ps | grep -i "\<$PROC\>")
			PROCPID=$(echo $PROCPID | cut -f1 -d" ")
			if [ -n "$PROCPID" ]
			then
				kill -9 $PROCPID
				echo "Processo $PROC [$PROCPID] ucciso."
			else
				echo "Processo $PROC non trovato."
			fi
		done
	else
		echo "Nessun processo da uccidere."
	fi
	echo
}

function archive {
	if [ $# -ne 0 ]
	then
		FILES=""
		
		for FILE in $@
		do
			if [ -e $FILE ]
			then
				FILES="$FILES $FILE"
			fi
		done
		
		tar -cvzf files.tar.gz $FILES
		
		if [ ! -d "backup" ]
		then
			mkdir backup
			echo "Cartella backup creata."
		fi
		
		mv files.tar.gz backup/	
	else
		echo "Nessun file da compattare."
	fi
	echo
}

function watchfor {
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
}

function whichshell {
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
}

clear

MENU="zap archive watchfor whichshell exit"
PS3="Digita il numero relativo al comando da eseguire: "

select SCELTA in $MENU
do
	case $SCELTA in
		zap)		read -p "Inserire il nome dei processi da uccidere, separati da uno spazio: " ARGS
					zap $ARGS;;
		archive)	read -p "Inserire il nome dei file da compattare, separati da uno spazio: " ARGS
					archive $ARGS;;
		watchfor)	read -p "Inserire il nome degli utenti da identificare, separati da uno spazio: " ARGS
					watchfor $ARGS;;
		whichshell)	read -p "Inserire il nome degli utenti da visualizzare, separati da uno spazio: " ARGS
					whichshell $ARGS;;
		exit)		echo "Fine del programma"
					exit 0;;
		*)			echo "Comando non valido";;
	esac
done

echo
