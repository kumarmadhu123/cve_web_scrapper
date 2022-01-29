#!/bin/sh
# Starting with web scrapping 
echo "Start with web scrapping"

read CVE_ID
echo "CVE ID Requested:  $CVE_ID"

DIR="$PWD/store"
echo $DIR

if [ ! -d "$DIR" ]; then
	echo "Creating a store directory"
	mkdir store
fi
curl "https://security-tracker.debian.org/tracker/$CVE_ID" >store/debian.html
curl "https://ubuntu.com/security/$CVE_ID" >store/ubuntu.html
curl "https://bugs.gentoo.org/show_bug.cgi?id=$CVE_ID" >store/gentoo.html
curl "https://bugzilla.suse.com/show_bug.cgi?id=$CVE_ID" > store/bugzilla.html
curl "https://bugzilla.redhat.com/show_bug.cgi?id=$CVE_ID" >store/redhat.html

xmllint --format store/debian.html >store/debian.txt ;

./search_code.sh

#Just to be safe remove the html files for next analysis
#rm store/debian.txt store/html
#rm store/ubuntu.html
#rm store/gentoo.html
#rm store/bugzilla.html
#rm store/redhat.html
