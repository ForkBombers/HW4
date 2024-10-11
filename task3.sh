#!/bin/bash

# Part a: Extract passengers from 2nd class who embarked at Southampton using gawk
echo "Part a: 2nd Class Passengers Embarked at Southampton"
gawk -F',' '$3 == 2 && $NF ~ /^S$/ { print $0 }' titanic.csv

# Part b: Replace male/female labels with M/F using sed with word boundaries
echo -e "\nPart b: Passengers with Gender Labels Replaced"
gawk -F',' '$3 == 2 && $NF ~ /^S$/ { print $0 }' titanic.csv | sed 's/\<male\>/M/g; s/\<female\>/F/g'

# Part c: Calculate the average age of the filtered passengers
echo -e "\nPart c: Average Age of 2nd Class Passengers Embarked at Southampton"
gawk -F',' '$3 == 2 && $NF ~ /^S$/ && $7 != "" { sum += $7; count++ } END { if (count > 0) print sum / count; else print "No valid ages found" }' titanic.csv
