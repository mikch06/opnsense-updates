#!/usr/local/bin/bash
# Check if updates for Opnsense are available
# Send an e-mail reminder if yes

set -x

# read config file config.cfg
. config.cfg
echo $from $to $smtp $auth $msg



# Check Opnsense for updates
updates=$(/usr/local/opnsense/scripts/firmware/check.sh)

if [[ $updates != *$isupdate* ]]; then
  echo "Packages are up to date."
else
         echo 'Updates available'

        # Create email message:
        touch $msg
        ##echo From: $from >> $msg
        ##echo To: $to >> $msg
        echo Subject: Opnsense Updates ready to install! >> $msg
	echo Content-Type: text/plain; charset="utf8" >> $msg
        echo "There are new updates ready to install for your Opnsense firewall." >> $msg
        echo
	echo $updates >> $msg
        curl --ssl-reqd $smtp --mail-from $from --mail-rcpt $to --upload-file $msg -u $auth
fi





#curl -v --ssl-reqd smtp://mail.cyon.ch --mail-from "admin@fw1.kissel.ch" --mail-rcpt mail@kissel.ch -u smtp@kissel.ch:YaYkt2HHkb6-q2 --upload-file email.txt
