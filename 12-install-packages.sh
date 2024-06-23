#!/bin/bash

USERID=$(id -u)
timestamp=$(date +%f-%h-%m-%S-%Y)
scriptname=$(echo $0 | cut -d "." -f1)
logsfile=/tmp/$timestamp-$scriptname.log

validate () {
    if [ $1 -ne 0 ]
    then
    echo "$2 is failed"
    exit 1
    else 
    echo "$2 is success"
    fi

}

if [ $USERID -ne 0 ]
then 
echo "plz try with the super user"
exit 1
else 
echo "you are super user"
fi

for i in $@
do 
echo "packages to install :$@"
dnf list installed $@ &>> $logsfile
if [ $? -eq 0]
then 
echo "skip $@ already installed"
else 
dnf install $@ -y &>> $logsfile
fi
done
