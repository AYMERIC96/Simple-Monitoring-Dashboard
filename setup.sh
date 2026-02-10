#!/bin/bash
# setup.sh - Installation de Netdata

echo "Début de l'installation de Netdata"

# Téléchargement et exécution du script d'installation officiel
# L'option --non-interactive permet au script de ne pas poser de questions
curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh
sh /tmp/netdata-kickstart.sh --non-interactive

echo "Netdata est installé !"
