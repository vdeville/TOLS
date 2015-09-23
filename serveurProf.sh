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
IP=$(hostname  -I)

clear

echo "$GREEN Lancement du script..."

echo "$BLUE (Installation de x11vnc si besoin)"
yes Y | apt-get install x11vnc > /dev/null

echo "$PURPLE Lancement du serveur"

echo "$YELLOW Serveur démaré sur l'ip: $IP$RED"
x11vnc -shared -viewonly -q -o logVNC.log -bg
echo "$RESTORE"