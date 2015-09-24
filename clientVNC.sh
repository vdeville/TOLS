#!/bin/sh
RESTORE='\033[0m'

RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'

LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'

IP=$1
if [ "$IP" = "" ]
then
        echo $RED
        echo
        echo "Erreur script aucun argument"
        echo $GREEN
        echo "Pour rappel de la syntaxe:"
        echo "./viewer.sh [ARGUMENT (IP)]"
        echo
        echo "Exemple: $LRED./clientVNC.sh 192.168.1.0"
        echo
        echo $RESTORE
        exit 1
fi

        yes Y |apt-get install screen > /dev/null
        yes Y |apt-get install vncviewer > /dev/null
        echo "$GREEN Lancement de la session..$RED"
        echo " Lancemement du screen.. $RESTORE"
        screen -S vncCLIENT -d -m vncviewer $IP
        echo "$GREEN Screen lancé faite $BLUE screen -r vncCLIENT $GREEN pour l'afficher."
        echo "$RESTORE"
