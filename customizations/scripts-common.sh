#!/usr/bin/env bash

read -r -p "==> Would you like to conquer the WordPress world? (y/N): " response

case "$response" in
  [yY][eE][sS]|[yY])
    echo "WordPress world conquered."
    ;;
  *)
    echo "Why not?"
    ;;
esac

echo "Enabling backups of the database..."
croncmd="/data/wordpress/customizations/database-backup.sh"
cronjob="*/15 * * * * $croncmd"
( crontab -u vagrant -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -u vagrant -

echo "Backing the database up..."
./database-backup.sh
