#!/bin/bash

usage() { echo "Usage: $0 [-s <sequence>] <fastq file(s)>" 1>&2; exit 1; }

while getopts ":s:" option
do
	case "${option}"
	in
	s) s=$OPTARG;;
	*) usage;;
	esac
done
shift $((OPTIND-1))

if [ -z "${s}" ]
then 
	usage
fi

for i in $@
do
	if [[ "$i" =~ .*.fast.$  ]]
	then
		var1=$(echo $i);
		var2=$(grep "+" $i| wc -l); 
		var3=$(grep "$s" $i|wc -l); 
		var4=$(echo "scale=3; ($var3*100)/$var2 " | bc -l);
		echo -e  "$var1:\t$var2\t$var3\t$var4" 
	fi
done | \
sort -k 4 -n -r
