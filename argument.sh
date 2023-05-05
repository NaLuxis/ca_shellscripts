# !/bin/bash

#EXEMPLE
#echo "File name is "$0  # holds the current script
#echo $3                 # $3 holds banana
#Data=$5
#echo "A $Data costs just $6."
#echo $#

# command : bash my_shopping.sh apple 5 banana 8 "Fruit Basket" 15
# outpout :
#File name is my_shopping.sh
#banana
#A Fruit Basket costs just 15
#6

#EXECICE
function File {
    # think you are inside the file
    # Change here
    echo $#            #"print the arguments"
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi

# change here
# here you can pass the arguments
bash $0 pomme raisin ananas
