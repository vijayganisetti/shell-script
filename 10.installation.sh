#!/bin/bash

USERID=$(id -u)

if [ $USERID -nq 0 ]
then 
    echo "plz run with the super user"
    exit 1
else
    echo "you are a super user"
fi

install mysql -y

if[ $? -ne 0 ]
then 
   echo "failed to install mysql"
else 
echo "successfully installed mysql"
fi 

install git -y
if [ $? -ne 0 ]
then
  echo "failed to install git"
else 
   echo "successfully installed git"
fi