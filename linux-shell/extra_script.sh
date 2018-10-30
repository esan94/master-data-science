#!/usr/bin/bash
FIRST_FILE=$1
SECOND_FILE=$2
DELIMETER=$3

for i in $(csv_column_numbers.sh ${FIRST_FILE} ${DELIMETER} | awk '{ print $2 }' | tail -n +4); do
	csv_column_numbers.sh ${SECOND_FILE} ${DELIMETER} | grep $i
done
