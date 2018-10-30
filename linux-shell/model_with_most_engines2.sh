#!/usr/bin/bash
FILE_INPUT=$1
COLUMN_INPUT=$2

MODEL=$(sort -t "^" -k ${COLUMN_INPUT} nr ${FILE_INPUT} | head -1 | cut -d "^" -f 3)
echo "The model is ${MODEL}"
