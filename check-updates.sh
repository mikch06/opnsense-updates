#!/usr/local/bin/bash
# Check if updates for Opnsense are available
# Send an e-mail reminder if yes

# debug mode
set -x

cd "$(dirname "$0")"

# read config file config.cfg
. config.cfg
echo $from $to $smtp $auth $msg

# Check Opnsense for updates
/usr/local/opnsense/scripts/firmware/check.sh
check="$(grep "$isupdate" /tmp/pkg_update.out)"


if [ "$check" == "$isupdate" ]; then
    echo "--- Packages are up to date."
else
        echo '--- Package updates are available'

        # Create email message:
        touch $msg
        echo From: $from >> $msg
        echo To: $to >> $msg
        echo Subject: Opnsense Updates ready to install! >> $msg
	echo Content-Type: text/plain; charset="utf8" >> $msg
        echo "There are new updates ready to install for your Opnsense firewall." >> $msg
	echo "" >> $msg
	# Copy script output to message
	echo $updates >> $msg
	# Send email message
        curl --ssl-reqd $smtp --mail-from $from --mail-rcpt $to --upload-file $msg -u $auth

        # Delete message file
	rm $msg
fi

