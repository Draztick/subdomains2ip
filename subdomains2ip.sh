#!/bin/bash

GREEN='\033[0;32m';
NC='\033[0m';

for i in $(cat $1); 
do 
	echo "${GREEN}=======$i=======${NC}" >> $2;
	host $i | grep "has address" | awk -F" " '{ print $4 }' >> $2;
done
