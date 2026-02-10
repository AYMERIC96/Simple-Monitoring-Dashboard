#!/bin/bash

# cleanup.sh - Suppression de Netdata

echo "--- Désinstallation de Netdata ---"

# Arrêt du service
sudo systemctl stop netdata

# Utilisation du script de désinstallation fourni par Netdata
if [ -f /usr/libexec/netdata/netdata-uninstaller.sh ]; then
    sudo /usr/libexec/netdata/netdata-uninstaller.sh --yes --action uninstall
fi

echo "--- Système nettoyé ! ---"
