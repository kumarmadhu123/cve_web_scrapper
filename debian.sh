#!/bin/sh
cd store

if grep -q "Minor issue" debian.txt; then
        echo "As per Debian Minor Issue"
fi

if  grep -q "Windows only" debian.txt ||  grep -q "Windows" debian.txt ; then
        echo "Windows specific CVE"
fi
cd ../

