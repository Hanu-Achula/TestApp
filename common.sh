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
    else
    echo "Admin,proceed"
    fi
}
check_root