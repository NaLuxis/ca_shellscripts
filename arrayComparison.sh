# !/bin/bash

#EXEMPLE
# basic construct
# array=(value1 value2 ... valueN)
array=(23 45 34 1 2 3)
#To refer to a particular value (e.g. : to refer 3rd value)
echo ${array[2]}

#To refer to all the array values
echo ${array[@]}

#To evaluate the number of elements in an array
echo ${#array[@]}

#EXERCICE
	# enter your array comparison code here

	a=(3 5 8 10 6)
	b=(6 5 4 12)
	c=(14 7 5 7)

	for numA in "${a[@]}"; do

	  for numB in "${b[@]}"; do

	    if [ $numA = $numB ];then
	      newNum[${#newNum[@]}]=$numA
	    fi

	  done

	done

	for numC in "${c[@]}"; do

	  for newNum2 in "${newNum[@]}"; do

	    if [ $numC = $newNum2 ];then
	      final[${#final[@]}]=$numC
	    fi

	  done

	done

	echo "Result :${final[@]}"
