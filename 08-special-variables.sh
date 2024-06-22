#!/bin/bash 

echo "to print all variables : $@"
echo " to know no of variables : $#"
echo " to know script name : $0"
echo " to know current working directory : $PWD"
echo " to know the home directoty : $HOME"
echo " to knoe the user : $USER"
echo " to know the server host name : $HOSTNAME"
echo " to know process id of current shell script : $$"
sleep 60 &
echo " to know process id of last background command : $!"
