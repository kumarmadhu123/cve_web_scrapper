#!/bin/sh

filename='store/search_box.txt'
n=1;

echo "------ANALYSING DEBIAN---------------------------------------------------" 
echo "========================================================================="
while read line;do
	grep -i --color=always "$line" store/debian.txt
	n=$((n+1))
done < $filename
echo ""

echo "------ANALYSING UBUNTU---------------------------------------------------" 
echo "========================================================================="
while read line;do
        grep -i --color=always "$line" store/ubuntu.html;
	n=$((n+1))
done < $filename
echo ""

echo "------ANALYSING GENTOO---------------------------------------------------"
echo "========================================================================="
while read line;do
        grep -i --color=always "$line" store/gentoo.html
        n=$((n+1))
done < $filename
echo ""

echo "------ANALYSING BUGZILLA-------------------------------------------------"
echo "========================================================================="
while read line;do
        grep -i --color=always "$line" store/bugzilla.html
        n=$((n+1))
done < $filename
echo""


echo "------ANALYSING REDHAT---------------------------------------------------"
echo "========================================================================="
while read line;do
        grep -i --color=always "$line" store/redhat.html
        n=$((n+1))
done < $filename
echo ""


