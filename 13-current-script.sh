#!/bin/bash

COURSE="devops from current script"

echo "defore calling others script : $COURSE"
echo "the process id of current shell script : $$"

#./14-others-script.sh ## 1st way to call others script

source ./14-others-script.sh ## 2nd way to call others script

echo "after calling others script : $COURSE"