# opnsense-updates
Check opnsense firewall for updates

Script `check-updates.sh` checks if there are any updates for your opnsense Firewall.

If there are open updates, the script will send an email message.

Run it with a cronjob regularly.

	e.g.
	On thursdays at 5pm
	0 17 * * 4 /root/opnsense-updates/check-updates.sh



## Install

	Copy config-smpale.cfg to config.cfg
	and fill the lines for an proper email config with smtp auth.


Ready!
