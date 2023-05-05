#!/bin/bash

#EXEMPLE
# notice you cannot make Ctrl-C work in this shell,
# try with your local one, also remeber to chmod +x
# your local .sh file so you can execute it!

trap "echo Booh!" SIGINT SIGTERM
echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true
do
    sleep 10
done

#Surely you can substitute the "echo Booh!" with a function:
function booh {
    echo "booh!"
}
trap booh SIGINT SIGTERM

#2 corresponds to SIGINT and 15 corresponds to SIGTERM
trap booh 2 15

#utilisation common est de clean un fichier temporaire
#trap "rm -f folder; exit" 2

#Pas d'Exercice


