#!/bin/sh
# Starting with web scrapping 
echo "Start with web scrapping"

read CVE_ID
echo "CVE ID entered by you is $CVE_ID"

DIR="$PWD/store"
echo $DIR

if [ ! -d "$DIR" ]; then
	echo "Creating a store directory"
	mkdir store
fi
curl "https://security-tracker.debian.org/tracker/$CVE_ID" >store/debian.txt
#curl "https://ubuntu.com/security/$CVE_ID" >store/>buntu.txt
#curl "https://bugs.gentoo.org/show_bug.cgi?id=$CVE_ID" >store/gentoo.txt
#curl "https://bugzilla.suse.com/show_bug.cgi?id=$CVE_ID" > store/bugzilla.txt
#curl "https://bugzilla.redhat.com/show_bug.cgi?id=$CVE_ID" >store/redhat.txt 


