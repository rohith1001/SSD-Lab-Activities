#!/bin/bash

read INPUT

LOWER_CASE_INPUT=`echo $INPUT | tr '[:upper:]' '[:lower:]'`

REVERSE=`echo $LOWER_CASE_INPUT | rev`

if [ "$LOWER_CASE_INPUT" == "$REVERSE" ]
then
    echo "Yes"
else
    echo "No"
fi
