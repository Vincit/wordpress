#!/usr/bin/env bash

# Naive, but getopts for a single flag is just... no.
# if [[ "$*" == *-f* ]]; then
  # FORCE_INSTALLER=1
# else
  # FORCE_INSTALLER=0
# fi

source customizations/helpers.sh
source customizations/theme-installer.sh

conquer() {
  echo "Conquering the world..."
  echo -ne '##                    (10%)\r'
  sleep_fraction 0.1
  echo -ne '######                (30%)\r'
  sleep_fraction 0.5
  echo -ne '##############        (60%)\r'
  sleep 1
  echo -ne '##################### (100%)\r'
  echo -ne '\n'
}

backup() {
  echo "Enabling backups of the database..."
  run /data/wordpress/customizations/vagrant-cron.sh

  echo "Backing the database up..."
  run /data/wordpress/customizations/database-backup.sh
}

composertask() {
  echo "Replacing composer.json..."
  rm composer.json composer.lock # I just don't want to deal with cp
  cp customizations/composer-sample.json composer.json # TODO: Maybe make it modular?
  composer update mirrors # To actually use the Private Packagist that we just enabled
  composer install
}

plugins() {
  echo "Turning all plugins on..."
  run "wp plugin list --status=inactive --field=name --format=csv | xargs sudo -u vagrant -i -- wp plugin activate --quiet"
}

admin() {
  # echo "Checking if the default user still exists..."
  run "wp user get vagrant --field=ID &> /data/wordpress/usercheck" # We can access that file.

  user_id=$(<usercheck)
  if grep --quiet Error <<< "$user_id"; then
    user_id=0 # The interpreter will be very sad if this isn't a number.
  fi
  rm usercheck

  if [ "$user_id" -eq 1 ]; then
    echo "Removing the default user..."
    run "wp user delete $user_id --yes"

    echo "Creating a new admin user..."
    password=$(openssl rand -base64 32 2> /dev/null | head -c32)
    run "wp user create 'vincit.admin' wordpress@vincit.fi --role='administrator' --display_name='Administrator' --user_pass='$password'"
    echo "Username: vincit.admin"
    echo "Password: $password"
  else
    echo "Default user wasn't found, skipping user deletion and creation..."
  fi
}

install() {
  echo "Running the installer..."
  for fn in "$@"; do
    eval "$fn"
  done
}

installer() {
  # Run full installer if this file doesn't exist.

  if [ ! -f .vincit.d ]; then
    install "conquer" "backup" "composertask" "plugins" "prompt_theme_installer" "admin"
    touch .vincit.d
  else
    # Run these tasks every time
    install "conquer" "backup" "admin"
  fi

  exit 0
}
