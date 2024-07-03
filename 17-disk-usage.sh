#!/bin/bash

# DISK_USAGE=$(df -hT | grep xfs)
# DISK_STORM=75

# while IFS= read -r line
# do
#  USAGE=$($DISK_USAGE | awk -F " " '{print $6F}' | cut -d "%" -f1)
# FILE_NAME=$($DISK_USAGE | awk -F " " '{print $NF}')

#   if [ $USAGE -ge $DISK_STORM ]
#   then 
#   echo "$FILE_NAME is more than $DISK_STORM% used current usage : $USAGE"
#   fi
# done <<< $DISK_USAGE

#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE \n"
    fi
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk Usage Alert" info@joindevops.com

# echo "body" | mail -s "subject" to-address