#!/bin/bash

INPUT_ARRAY=( "$@" )
ARRAY_LENGTH=${#INPUT_ARRAY[@]}

RES_A=${INPUT_ARRAY[0]}
for (( i=1; i<${ARRAY_LENGTH}; i++ ))
do
    RES_B=`echo "${RES_A}^${INPUT_ARRAY[i]}" | bc`
    RES_A=${RES_B}
done

echo ${RES_A}

