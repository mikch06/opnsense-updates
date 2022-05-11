# opnsense-updates
Check opnsense firewall for updates

Script `check-updates.sh` checks if there are any updates for your opnsense Firewall.

If there are open updates, the script will send an email message.

Run it with a opnsense system cronjob regularly.

## Install
1.

	Copy config-smpale.cfg to config.cfg
	and fill the lines for a proper email config with smtp auth.
2.
	Copy and/or edit cron/actions_checkupdate.conf to /usr/local/opnsense/service/conf/actions.d
	
	Run	service configd restart

Ready!
