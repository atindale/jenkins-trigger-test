#!/bin/bash
 
TODAY=`/bin/date +%d`
#TOMORROW=`/bin/date +%d -d "1 day"`
TOMORROW=`/bin/date +%d -d "-1 day"`

echo "TODAY=$TODAY"
echo "TOMORROW=$TOMORROW"

if [ $TOMORROW -lt $TODAY ]; then
    echo "Last day of the month. Running jobs."
    curl -X POST http://atindale:991c410d6a2aa477f90edee941f7e960@jenkins:8080/job/Test2/build?token=abc123
    exit 0
fi
 
echo "Nothing to run today"