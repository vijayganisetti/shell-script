#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "you are not a supersuper try with super user"
exit 1
else
echo "you are a super user"
fi
dnf install mysql -y

if [ $? -ne 0 ]
then 
echo "installing sql is failed"
exit 1
else 
echo " installing is succes "
fi 

dnf install git -y

if [ $? -ne 0 ]
then 
echo " installing git is failed "
else 
echo " installing git succes "
fi 

