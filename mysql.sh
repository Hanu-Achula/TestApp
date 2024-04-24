# Including Functions and code from another script common.sh
 source ./common.sh

# Calling check_root to check root access
 check_root

 # Installing SQL_SEREVER
 dnf install mysql-server -y &>>$LOGFILE

 # Checking Successful or Not

 validate $? "SQL SERVER INSTALLATION" $LOGFILE
