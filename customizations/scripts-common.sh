#!/usr/bin/env bash

# This script is run in the context of the local machine. Not Vagrant.
# Unless you SSH into Vagrant.

run() {
  vagrant ssh -- -t "$@" 2> scripts-common.error.log
}

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
run /data/wordpress/customizations/vagrant-cron.sh

echo "Backing the database up..."
run /data/wordpress/customizations/database-backup.sh
