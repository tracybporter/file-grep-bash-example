#!/bin/bash

while read mr; do
  grep --no-filename $mr data-files/*.txt
done < master.txt
