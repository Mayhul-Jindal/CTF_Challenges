#!/bin/bash

if [ "$1" == "" ] 
then
	echo "usage: $0 <fileName>"
	exit -1
else
	file=$1
	it=0
	
	while [ true ];
	do
		cat $file | grep  --text "whySoEagerToSolve" > /dev/null
		if [ $? -eq 0 ]
		then
			newfile=${it}_$file
			echo "the desired text is present...now removing it"
			cp $file tmp.py
			sed  's/whySoEagerToSolve//g' $file > tmp.py
			python3 tmp.py > $newfile
			echo "cleaned the layer....$newfile "
			let it=$it+1
			file=${newfile}
		else
			echo "job is complete or something went wrong lol"
			break
		fi
	done
fi
