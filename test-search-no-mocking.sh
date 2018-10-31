#!/usr/bin/env bash
### Rather than roll my own, if I was really serious about bash script testing I'd dig further into https://github.com/sstephenson/bats

printf "\n\nTESTING search-all-data-files.sh\n"

#setup spec
outputFile=testing-search-all-output.txt
rm -f $outputFile
sh ./search-all-data-files.sh > $outputFile

# --------------------
printf "\nFound the correct number of rows\n"
#given
expectedRowCount=3

#when
actualRowCount=(`wc $outputFile`)

#then
if [ $actualRowCount = $expectedRowCount ]
then
    echo " Success"
else
    echo " FAILED: Row count was $actualRowCount not $expectedRowCount"
    exit 1
fi

# --------------------
printf "\nFound the correct rows\n"
#given
file1match="f1,3,num1003,more,stuff"
file2match="f2,2,num2002,more,stuff"
file3match="f3,1,num3001,more,stuff"
declare -a expectedMatches=($file1match $file2match $file3match)
notFoundCount=0

#expects
for expectedRow in ${expectedMatches[@]}; do
    if  [ $(grep --count $expectedRow $outputFile)  = 0 ]; then
        ((notFoundCount+=1))
    fi
done

if [ $notFoundCount -gt 0 ]
    then
        echo " FAILED: No match found for $notFoundCount rows"
        exit 1
    else
        echo " Success"
fi
