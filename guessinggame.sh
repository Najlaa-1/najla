#!/bin/bash

# Fonction pour compter le nombre de fichiers dans le répertoire courant
function count_files {
    echo $(ls -1 | wc -l)
}

# Nombre correct de fichiers
correct_count=$(count_files)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

while true; do
    # Demander une entrée utilisateur
    read -p "Votre estimation : " guess

    # Vérifier si l'estimation est correcte
    if [[ $guess -eq $correct_count ]]; then
        echo "Félicitations ! Vous avez deviné correctement."
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Trop bas. Essayez encore."
    else
        echo "Trop haut. Essayez encore."
    fi
done

