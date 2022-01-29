#!/bin/sh

filename='store/search_box.txt'
n=1;
echo "------ANALYSING DEBIAN---------------------------------------------------" 
while read line;do
	grep -i --color=always "$line" store/debian.txt 
	n=$((n+1))
done < $filename

echo "------ANALYSING UBUNTU---------------------------------------------------" 
while read line;do
        grep -i --color=always "$line" store/ubuntu.html
        n=$((n+1))
done < $filename

echo "------ANALYSING GENTOO---------------------------------------------------"
while read line;do
        grep -i --color=always "$line" store/gentoo.html
        n=$((n+1))
done < $filename

echo "------ANALYSING BUGZILLA-------------------------------------------------"
while read line;do
        grep -i --color=always "$line" store/bugzilla.html
        n=$((n+1))
done < $filename


echo "------ANALYSING REDHAT---------------------------------------------------"
while read line;do
        grep -i --color=always "$line" store/redhat.html
        n=$((n+1))
done < $filename



