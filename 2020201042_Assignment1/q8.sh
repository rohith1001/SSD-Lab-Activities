#!/bin/bash

CRONTAB_FILE=$1
crontab ${CRONTAB_FILE} 1>/dev/null 2>/dev/null
MY_EXIT_STATUS=$?

if (( ${MY_EXIT_STATUS} == 0 ))
then
    crontab -r
    echo "Yes"
else
    echo "No"
fi
