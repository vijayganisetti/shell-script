#!/bin/bash

DISK_USAGE=$(df -ht | grep xfs)
DISK_STORM=75

while IFS = read -r line
do
 USAGE=$($DISK_USAGE | awk -F " " '{print $6F}' | cut -d "%" -f1)
FILE_NAME=$($DISK_USAGE | awk -F " " '{print $NF}')

  if [ $USAGE -ge $DISK_STORM ]
  then 
  echo "$FILE_NAME is more than $DISK_STORM% used current usage : $USAGE"
  fi
done <<< $DISK_USAGE

