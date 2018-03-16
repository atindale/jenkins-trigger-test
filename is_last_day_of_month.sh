#!/bin/bash
 
TODAY=`/bin/date +%d`
TOMORROW=`/bin/date +%d -d "1 day"`
 
if [ $TOMORROW -lt $TODAY ]; then
   exit 0
fi
 
exit 1