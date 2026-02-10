# Simple Monitoring Dashboard Automation

Ce projet a été réalisé dans le cadre du parcours DevOps de [roadmap.sh](https://roadmap.sh/projects/simple-monitoring-dashboard). L'objectif est d'automatiser l'installation, le test et la suppression d'un tableau de bord de surveillance système utilisant **Netdata**.

## Fonctionnalités

- **Installation Automatisée** : Script pour installer Netdata sans interaction manuelle.
- **Stress Test** : Simulation de charge CPU pour tester les alertes du dashboard.
- **Nettoyage Complet** : Désinstallation propre de l'agent de monitoring.

## Prérequis

- Un système Linux (Ubuntu recommandé).
- `curl` installé sur la machine.
- Droits d'administrateur (`sudo`).

## Contenu du Projet

- `setup.sh` : Installe Netdata sur le système. et on lance le script avec la commande 
- `test_dashboard.sh` : Génère une charge CPU pour vérifier la réactivité du dashboard.
- `cleanup.sh` : Supprime Netdata et nettoie les fichiers temporaires.

## Utilisation

### 1. Installation
Rendre les scripts exécutables et lancer l'installation :
```bash
chmod +x *.sh
sudo ./setup.sh
sudo ./cleanup.sh
./test_dashboard.sh
