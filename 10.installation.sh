#!/bin/bash 
USERID=$(id -u)

if [$USERID -ne 0]
then 
echo "plz run with super user"
exit 1
else
echo "running with super user"
fi

dnf install mysql -y
if [$? -ne 0 ]
then 
echo "failed to install mysql"
exit 1
then
echo "failed to install mysql"
fi 
dnf install git -y

if [$? -ne 0 ]
then 
echo "failed to install mysql"
exit 1
else
echo "failed to install mysql"
fi 