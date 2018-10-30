#!/bin/bash
FILE_INPUT=$1
DELIMETER=$2
MODEL=$(cut -d ${DELIMETER} -f 3,7 ${FILE_INPUT} | sort -t ${DELIMETER} -k 2nr,2 | head -1 | tr ${DELIMETER} "\n" | head -1)
ENGINE=$(cut -d ${DELIMETER} -f 3,7 ${FILE_INPUT} | sort -t ${DELIMETER} -k 2nr,2 | head -1 | tr ${DELIMETER} "\n" | tail -1)
echo "Model of maximun engine is: ${MODEL}"
echo "The number of engines is: ${ENGINE}"
