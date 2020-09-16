#!/bin/bash

read INPUT

MY_ARR=( `echo $INPUT | tr -d " " | grep -o .` )
if (( ${#MY_ARR[@]} <= 1 ))
then
    echo "Invalid"
    exit
fi

SUM_A=0
for (( i=${#MY_ARR[@]}-1; i>=0; i-- ))
do

    SUM=`echo "$SUM_A+${MY_ARR[i]}" | bc`
    SUM_A=${SUM}
    (( i-- ))
    RES=`echo "${MY_ARR[i]}*2" | bc`
    if (( ${RES}>9 ))
    then
        RES_A=$(( ${RES}-9 ))
        RES=$RES_A
    fi

    if (( $i>=0 ))
    then
        MY_ARR[i]=${RES}
        SUM=`echo "$SUM_A+${MY_ARR[i]}" | bc`
        SUM_A=${SUM}
    fi

done

MY_MOD=`echo "${SUM_A}%10" | bc`
if (( ${MY_MOD}==0  ))
then
    echo "Valid"
else
    echo "Invalid"
fi

