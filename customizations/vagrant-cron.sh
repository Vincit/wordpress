#!/usr/bin/env bash
croncmd="/data/wordpress/customizations/database-backup.sh"
cronjob="*/15 * * * * $croncmd"

( crontab -u vagrant -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -u vagrant -
