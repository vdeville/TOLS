# Teacher Oneline Stream

Mon projet utilise:
  - X11VNC
  - VNCVIEWER

#### VNC C'est quoi ?
> Virtual Network Computing ou VNC est un logiciel utilisé pour se connecter à un ordinateur distant. Il permet de transmettre les saisies au clavier ainsi que les clics de souris d'un ordinateur à l'autre, à travers un réseau informatique, qu'il soit local ou par le biais d'Internet. VNC est indépendant de la plateforme, un client VNC installé sur n'importe quel système d'exploitation peut se connecter à un serveur VNC installé sur un autre système d'exploitation. Plusieurs clients peuvent se connecter en même temps sur un même serveur VNC.

Comme mentionné ci-dessus plusieurs clients peuvent se connecter en même temps, je suis donc parti de ce principe pour créer mes scripts. J'ai rendu la partie serveur accessible uniquement en lecteur seule pour les clients qui s'y connecteront par la suite.

Je suis donc reparti de mon idée de départ qui était de créer tout un système très simple pour envoyer l'ordinateur du professeur sur chaque ordinateur des élèves.
Afin de faciliter la mise en place, j'ai créé un premier script qui lance le serveur sur l'ordinateur du professeur et un second qui lance la connexion au serveur sur les ordinateurs d'élèves.

# FONCTIONNEMENT

* Prof : il suffit de lancer le script sh, pour ce faire voici un exemple :
    >               sh serveurProf.sh

* Élève : il est également nécessaire de lancer un script sh mais cette fois-ci en rajoutant un argument qui est l'ip source, exemple :
    >               sh clientVNC.sh 192.168.1.26

# Installation

Seulement un download:
* Profs: 
    ```sh
    $ wget https://github.com/MyTheValentinus/TOLS/blob/master/serveurProf.sh
    ```
    
* Eleves: 
    ```sh
    $ wget https://github.com/MyTheValentinus/TOLS/blob/master/clienVNC.sh
    ```
