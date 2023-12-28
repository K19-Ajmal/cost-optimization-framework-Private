#!/bin/bash

ACCOUNT_STATUS=$(id -u)

if [[ ${ACCOUNT_STATUS} -eq 0 ]]; then
    echo "Executing with root privildege"
else 
    echo "Executing with $(id -un)"
fi
# echo ${ACCOUNT_STATUS}


USER_TOBE_CREATED=CLIAPP001 

#Creating USER 
user