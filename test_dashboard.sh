#!/bin/bash

# test_dashboard.sh - Stress test du processeur

echo "--- Simulation de charge CPU en cours... ---"
echo "Regardez votre dashboard Netdata monter en flèche !"
echo "Appuyez sur CTRL+C pour arrêter le test."


# We use hearts for upgrade 80%
for i in {1..4}; do
   while true; do :; done &
done

# wait user touch CTRL+C
wait
