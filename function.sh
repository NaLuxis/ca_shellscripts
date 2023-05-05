# !/bin/bash

#EXEMPLE
# basic construct
function function_name {
  echo "salut"
}

function function_B {
  echo "Function B."
}

function function_A {
  echo "$1"
}

function adder {
  echo "$(($1 + $2))"
}

# FUNCTION CALLS
# Pass parameter to function A
function_A "Function A. 2"     # Function A.
function_B                   # Function B.
# Pass two parameters to function adder
adder 12 56                  # 68


#EXERCICE

# enter your function code here

function ENGLISH_CALC {
    numA=$1
    numB=$3

    signn=$2

    if [ $signn == "plus" ]; then
            echo "$numA + $numB = $(($numA+$numB))"
    elif [ $signn == "minus" ]; then
            echo "$numA - $numB = $(($numA-$numB))"
    elif [ $signn == "times" ]; then
            echo "$numA * $numB = $(($numA*$numB))"
    fi
}

# testing code
ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6














