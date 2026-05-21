#!/bin/bash

echo "====================================="
echo " COMPILATION DES PROGRAMMES "
echo "====================================="

# Compilation du serveur
gcc serveur/main.c -o serveur/serveur

# Compilation du client1
gcc client1/main.c -o client1/client1

# Compilation du client2
gcc client2/main.c -o client2/client2

# Compilation du client3
gcc client3/main.c -o client3/client3

echo ""
echo "Compilation terminee"
echo ""

echo "====================================="
echo " EXECUTION DES PROGRAMMES "
echo "====================================="

# Lancement du serveur
gnome-terminal -- bash -c "./serveur/serveur; exec bash"

# Petite pause
sleep 2

# Lancement du client1
gnome-terminal -- bash -c "./client1/client1; exec bash"

# Lancement du client2
gnome-terminal -- bash -c "./client2/client2; exec bash"

# Lancement du client3
gnome-terminal -- bash -c "./client3/client3; exec bash"
