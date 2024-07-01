#!/bin/bash 

set -e 

failure() {
  local lineno=$1
  local msg=$2
  echo "Failed at $lineno: $msg"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "plz run with super user"
  exit 1
else
  echo "running with super user"
fi

dnf install mysql -y

dnf install git -y

