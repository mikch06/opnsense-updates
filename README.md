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
	
	Run service configd restart
	
3.

	Create a opnsense system cronjob
	
![image](https://user-images.githubusercontent.com/7150125/167785260-07b18d2a-b499-4aec-a14a-40b20043f47f.png)


Ready!

# Get this email output

	There are new updates ready to install for your Opnsense firewall.

Updating OPNsense repository catalogue...
Fetching meta.conf: . done
Fetching packagesite.pkg: .......... done
Processing entries: .......... done
OPNsense repository update completed. 810 packages processed.
All repositories are up to date.
Checking integrity... done (0 conflicting)
Your packages are up to date.
Checking for upgrades (46 candidates): .......... done
Processing candidates (46 candidates): .......... done
The following 46 package(s) will be affected (of 0 checked):

Installed packages to be UPGRADED:
    acme.sh: 3.0.4 -> 3.0.4_2
    bash: 5.2.2 -> 5.2.2_1
    bind-tools: 9.18.7 -> 9.18.8
    git: 2.38.0 -> 2.38.1_3
    glib: 2.74.0,2 -> 2.74.1,2
    libgpg-error: 1.45 -> 1.46
    libidn2: 2.3.3 -> 2.3.3_1
    libpsl: 0.21.1_4 -> 0.21.1_6
    libunistring: 1.0 -> 1.1
    libxml2: 2.10.2 -> 2.10.3_1
    mpd5: 5.9_11 -> 5.9_12
    nss: 3.83 -> 3.84
    openssl: 1.1.1q,1 -> 1.1.1s,1
    openvpn: 2.5.7 -> 2.5.8
    opnsense: 22.7.6 -> 22.7.7_1
    opnsense-update: 22.7.5 -> 22.7.7
    os-acme-client: 3.13 -> 3.14
    os-ddclient: 1.9 -> 1.9_1
    os-net-snmp: 1.5_1 -> 1.5_2
    os-wireguard: 1.12 -> 1.13
    pcre: 8.45_1 -> 8.45_3
    php80: 8.0.24 -> 8.0.25
    php80-ctype: 8.0.24 -> 8.0.25
    php80-curl: 8.0.24 -> 8.0.25
    php80-dom: 8.0.24 -> 8.0.25
    php80-filter: 8.0.24 -> 8.0.25
    php80-gettext: 8.0.24 -> 8.0.25
    php80-ldap: 8.0.24 -> 8.0.25
    php80-mbstring: 8.0.24 -> 8.0.25
    php80-pdo: 8.0.24 -> 8.0.25
    php80-phalcon: 5.0.3 -> 5.1.0
    php80-session: 8.0.24 -> 8.0.25
    php80-simplexml: 8.0.24 -> 8.0.25
    php80-sockets: 8.0.24 -> 8.0.25
    php80-sqlite3: 8.0.24 -> 8.0.25
    php80-xml: 8.0.24 -> 8.0.25
    php80-zlib: 8.0.24 -> 8.0.25
    py39-cryptography: 3.4.8 -> 3.4.8,1
    py39-pytz: 2022.2.1,1 -> 2022.5,1
    py39-sqlite3: 3.9.14_7 -> 3.9.15_7
    python39: 3.9.14 -> 3.9.15
    sqlite3: 3.39.3,1 -> 3.39.3_1,1
    sudo: 1.9.11p3 -> 1.9.12
    suricata: 6.0.8 -> 6.0.8_1
    unbound: 1.16.3 -> 1.17.0

Installed packages to be REINSTALLED:
    openldap24-client-2.4.59_4 (options changed)

Number of packages to be upgraded: 45
Number of packages to be reinstalled: 1

53 MiB to be downloaded.
