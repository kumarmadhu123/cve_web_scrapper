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
#cp store/ubuntu.html store/ubuntu.txt
#cp store/gentoo.html store/gentoo.txt
#cp store/bugzilla.html store/bugzilla.txt
#cp store/redhat.html store/redhat.txt


#xmllint --format store/ubuntu.html >store/ubuntu.txt ;
#xmllint --format store/gentoo.html >store/gentoo.txt ;
#xmllint --format store/bugzilla.html >store/bugzilla.txt ;
#xmllint --format store/redhat.html >store/redhat.txt ;

./search_code.sh

#curl "https://ubuntu.com/security/$CVE_ID" >store/ubuntu.txt
#curl "https://bugs.gentoo.org/show_bug.cgi?id=$CVE_ID" >store/gentoo.txt
#curl "https://bugzilla.suse.com/show_bug.cgi?id=$CVE_ID" > store/bugzilla.txt
#curl "https://bugzilla.redhat.com/show_bug.cgi?id=$CVE_ID" >store/redhat.txt 

