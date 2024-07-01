#!/bin/bash

COURSE="devops from current script"

echo "defore calling others script : $COURSE"
echo "the process id of current shell script : $$"

./14-other-script.sh

echo "after calling others script : $COURSE"