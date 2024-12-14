#!/bin/bash
chmod +x guessinggame.sh
./guessinggame.sh

# Obtenir le nombre de fichiers dans le répertoire actuel
file_count=$(ls -l | grep -v ^d | wc -l)

# Demander à l'utilisateur de deviner
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
while true; do
    read guess
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Ce n'est pas un nombre valide. Essayez encore."
    elif [ "$guess" -lt "$file_count" ]; then
        echo "Trop bas ! Essayez encore."
    elif [ "$guess" -gt "$file_count" ]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Félicitations ! Vous avez deviné correctement le nombre de fichiers : $file_count."
        break
    fi
done

