#!/bin/bash

########################################
#
# Author : Hanu
# Date   : 24-04-2024
#
#########################################

# Declaring variables
USERID=$(id -u)
SCRIPT_NAME=$(echo $0 | awk -F "." '{print $1}')
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$SCRIPT_NAME-$TIMESTAMP.log"
# Declaring functions
check_root() 
{
    if [ $USERID -ne 0 ]
    then 
    echo "Please run script with admin"
    exit 1
    else
    echo "Admin,proceed"
    exit 0
    fi
}

validate()
{
    if [ $1 -ne 0 ]
    then
    echo "$2....FAILURE..CHECKLOG...$3"
    exit 1
    else
    echo "$2....SUCCESS..CHECKLOG...$3"
    fi
}


