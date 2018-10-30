#!/usr/bin/bash
FILE_INPUT=$1
NUM_ENGINES=$2

cut -d "^" -f 7 ${FILE_INPUT} | grep "${NUM_ENGINES}" | uniq -c | tr -s " " | cut -d " " -f 2
