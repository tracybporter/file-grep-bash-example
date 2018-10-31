#!/usr/bin/env bash

printf "\nFound the correct number of rows\n"
#given
expectedRowCount=1

#when
sh ./simple.sh > testing-output.txt
actualRowCount=(`wc testing-output.txt`)

#then
if [ $actualRowCount = $expectedRowCount ]
then
    echo " Success"
else
    echo " FAILED: Row count was $actualRowCount not $expectedRowCount"
    exit 1
fi