#!/bin/bash

COMMAND=( `cat ~/.bash_history | tail -10 | cut -f1 -d" " | sort | uniq -c | sort -nr` )
COUNT=${#COMMAND[@]}

for (( i=0; i<$COUNT; i++ ))
do
    echo -n "${COMMAND[i+1]}"
    echo -n " "
    echo -n "${COMMAND[i]}"
    ((i++))
    echo
done

