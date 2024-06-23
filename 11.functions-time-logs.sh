#!/bin/bash 

## this script is combination of functions , conditions , timestamp , and log files and script name and colours 

USERID=$(id -u)
timestamp=$(date +%f-%h-%m-%S-%Y)
scriptname=$(echo $0 | cut -d "." -f 1)
logsfile=/tmp/$timestamp-$scriptname.log
R="\e[31m"
G="\e[32m"
N="\e[0m"


validate () {
    if [ $1 -ne 0 ]
    then 
    echo -e"$2 $R is failed"
    exit 1
    else
    echo -e"$2 $G is success"
    fi
}

if [ $USERID -ne 0 ]
then 
echo "try with the superuser"
exit 1
else 
echo "running with superuser"
fi 
dnf install chrony -y &>>$logsfile  ## saving this result to logs file
validate $? "installation of chrony"

dnf install gcc -y &>>$logsfile
validate $? "installation of gcc"

