#!/bin/bash

read MY_COMMAND
MY_COMMAND_LEN=${#MY_COMMAND}

if command -v $MY_COMMAND &> /dev/null
then
    echo "Yes"
    exit
fi

SORTED_COMMAND=`echo ${MY_COMMAND} | grep -o . | sort | tr -d "\n"`

COMMAND_LIBRARY=(`compgen -c | sed -nr "/^.{$MY_COMMAND_LEN}$/p"`)
for(( i=0; i<${#COMMAND_LIBRARY[@]}; i++ ))
do
    COMMAND_SORT=`echo ${COMMAND_LIBRARY[i]} | grep -o . | sort | tr -d "\n"`
    if [ $COMMAND_SORT == $SORTED_COMMAND ]
    then
        echo "Yes"
        exit
    fi
done

echo "No"
