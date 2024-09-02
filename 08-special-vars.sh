#!/bin/bash 

echo "to print all varaibles : $@ "
echo " to know no of vars : $# "
echo " to know script -0name : $0"
echo " to know working directoru : $PWD"
echo " to know home directory : $HOME "
echo " to know which user running the script : $USER"
echo " to know Host name : $HOSTNAME"
echo " to know pid num : $$ "
sleep 20 &
echo " to know background pid : $!"
echo " : to know exit status : $?"
