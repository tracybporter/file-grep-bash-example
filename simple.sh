#!/bin/bash

while read mr; do
  grep $mr data-files/file2.txt
done < master.txt
