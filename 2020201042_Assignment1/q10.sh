#!/bin/bash

read OPERATOR
read NO_OF_OPERANDS

for (( i=0; i<$NO_OF_OPERANDS; i++ ))
do
    read OPERAND[i]
done

RES_A=${OPERAND[0]}
for (( i=1; i<$NO_OF_OPERANDS; i++ ))
do
    RES_B=`printf '%.4f\n' "$(echo "scale=5; ${RES_A}${OPERATOR}${OPERAND[i]}" | bc)"`
    RES_A=${RES_B}
done

echo ${RES_A}
