#!/usr/bin/env bash
### Rather than roll my own, if I was really serious about bash script testing I'd dig further into https://github.com/sstephenson/bats

#setup spec
printf "\n\nTESTING simple.sh\n"
sh ./simple.sh > testing-simple-output.txt

# --------------------
printf "\nFound the correct number of rows\n"
#given
expectedRowCount=1

#when
actualRowCount=(`wc testing-output.txt`)

#then
if [ $actualRowCount = $expectedRowCount ]
then
    echo " Success"
else
    echo " FAILED: Row count was $actualRowCount not $expectedRowCount"
    exit 1
fi

# --------------------
printf "\nFound the correct row\n"
#given
row1="f2,2,num2002,more,stuff"

#expects
if grep -Fxq $row1 testing-output.txt
then
    echo " Success"
else
    echo " FAILED: Row $row1 was not found"
    exit 1
fi