#!/bin/bash

file=$1
if [ $# -eq 1 ]
	then
		while read line; do
			echo -e "\e[1;32m Analizando:\e[0m$line"	
			curl -s --head $line | head -n 1
		done < $file		
else
	echo "No pasaste un argumento"
fi
