#!/bin/bash
FILE_INPUT=$1
DELIMETER=$2
echo "File input is: $FILE_INPUT"
echo "Delimeter is: $DELIMETER"
NUMBER_COL=$(head -1 ${FILE_INPUT} | tr ${DELIMETER} "\n" | wc -l )
echo "Number of columns is: $NUMBER_COL"
paste <(seq ${NUMBER_COL}) <(head -1 ${FILE_INPUT} | tr $DELIMETER "\n") 


