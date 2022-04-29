#!/usr/local/bin/bash

#set -x


. config.cfg
echo $to
echo foo

#test=$(/usr/local/opnsense/scripts/firmware/check.sh)
echo $test

uptodate="Checking integrity... done (0 conflicting) Your packages are up to date.  Checking for upgrades  Your packages are up to date."

echo $uptodate

isuptodate="Your packages are up to date"

if [[ $uptodate == *$isuptodate* ]]; then
  echo "It's there."
fi

if [ test == test ]; then
  echo "This is it"
fi
