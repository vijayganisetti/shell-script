#!/bin/bash
SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d SOURCE_DIRECTORY ]
then 
echo "source directory exits"
else 
echo "make sure source directory $SOURCE_DIRECTORY exits"

FILES=$( SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
 echo "deleting files :$line"
 rm -rf $line

done <<<$FILES
