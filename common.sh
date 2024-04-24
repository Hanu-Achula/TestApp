#!/bin/bash

########################################
#
# Author : Hanu
# Date   : 24-04-2024
#
#########################################

# Declaring variables
USERID=$(id -u)

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

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
    echo "$2....FAILURE"
    exit 1
    else
    echo "$2....SUCCESS"
    fi
}


