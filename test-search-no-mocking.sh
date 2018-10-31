#!/usr/bin/env bash
### Rather than roll my own, if I was really serious about bash script testing I'd dig further into https://github.com/sstephenson/bats

printf "\nFound the correct number of rows\n"
#given
expectedRowCount=3

#when
sh ./search-all-data-files.sh > testing-output.txt
actualRowCount=(`wc testing-output.txt`)

#then
if [ $actualRowCount = $expectedRowCount ]
then
    echo " Success"
else
    echo " FAILED: Row count was $actualRowCount not $expectedRowCount"
    exit 1
fi