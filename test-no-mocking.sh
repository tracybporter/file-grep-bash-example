#!/usr/bin/env bash

printf "\nFound the correct number of rows\n"
#given
expectedRowCount=3

#when
sh ./simple.sh > testing-output.txt

#then
actualRowCount=(`wc testing-output.txt`)

if [ $actualRowCount = $expectedRowCount ]
then
    echo " Success"
else
    echo " FAILED: Row count was $actualRowCount not $expectedRowCount"
fi