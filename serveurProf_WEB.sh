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

echo "$BLUE (Installation de x11vnc et novnc si besoin)"
yes Y | apt-get install x11vnc > /dev/null
yes Y | apt-get install novnc > /dev/null
yes Y | apt-get install git > /dev/null


cd /home/
echo "$GREEN Création du dossier TOSL dans /home"
mkdir TOSL > /dev/null
cd TOSL
echo " Clone du projet noVNC (git) $RESTORE"
git clone https://github.com/kanaka/noVNC.git > /dev/null
echo " $RED Lancement de noVNC Web"
screen -S vncWEB -d -m sh ./noVNC/utils/launch.sh
echo "$GREEN Screen lancé faite $BLUE screen -r vncWEB $GREEN pour l'afficher."

echo "$PURPLE Lancement du serveur"

echo "$YELLOW Serveur démaré sur l'adresse WEB: ${IP}:6080/vnc_auto.html $RED"
x11vnc -shared -viewonly -q -o logVNC.log -bg
echo "$RESTORE"