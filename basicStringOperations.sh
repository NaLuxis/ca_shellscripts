# !/bin/bash

#EXEMPLE
#       1234567890123456
STRING="this is a string"
echo ${#STRING}            # 16

STRING="this is a string"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING"     # 1 is the position of the first 't' in $STRING

STRING="this is a string"
POS=1
LEN=3
echo ${STRING:$POS:$LEN}   # his

STRING="this is a string"
echo ${STRING:1}           # $STRING contents without leading character
echo ${STRING:12}          # ring

# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME

STRING="to be or not to be"
echo ${STRING[@]/be/eat}        # to eat or not to be

STRING="to be or not to be"
echo ${STRING[@]//be/eat}        # to eat or not to eat

STRING="to be or not to be"
echo ${STRING[@]// not/}        # to be or to be

STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now}    # eat now or not to be

STRING="to be or not to be"
echo ${STRING[@]/%be/eat}        # to be or not to eat

STRING="to be or not to be"
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}    # to be or not to be on 2012-06-14

#EXEERCICE
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

    # write your code here
    ISAY=$BUFFETT
    change1=${ISAY[@]/snow/foot}
    change2=${change1[@]//snow/}
    change3=${change2[@]/finding/getting}
    loc=`expr index "$change3" 'w'`
    ISAY=${change3::$loc+2}

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo "$ISAY"
