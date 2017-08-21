#!/usr/bin/env bash

# Create a file with filename forceinstall to force run the installer
# FORCE_INSTALLER=1 vagrant up would be so much better but doesn't work unfortunately.

if [ -f forceinstall ]; then
  FORCE_INSTALLER=1
else
  FORCE_INSTALLER=0
fi

source customizations/helpers.sh
source customizations/theme-installer.sh

installer() {
  read -r -p "==> Run installer? (Y/n): " response
  case "$response" in
    [nN][oO]|[nN])
        echo "Skipping installer. Hope you know what you're doing."
      ;;
    *)
      echo "Running the installer..."
      echo "Conquering the world..."
      echo -ne '##                    (10%)\r'
      sleep_fraction 0.1
      echo -ne '######                (30%)\r'
      sleep_fraction 0.5
      echo -ne '##############        (60%)\r'
      sleep 1
      echo -ne '##################### (100%)\r'
      echo -ne '\n'

      echo "Enabling backups of the database..."
      run /data/wordpress/customizations/vagrant-cron.sh

      echo "Backing the database up..."
      run /data/wordpress/customizations/database-backup.sh

      echo "Replacing composer.json..."
      rm composer.json composer.lock # I just don't want to deal with cp
      cp customizations/composer-sample.json composer.json # TODO: Maybe make it modular?
      composer install

      theme_installer "$(pwd)"

      echo "Removing the default user..."
      run "wp user delete $user_id --yes"

      echo "Turning all plugins on..."
      run "wp plugin list --status=inactive --field=name --format=csv | xargs sudo -u vagrant -i -- wp plugin activate --quiet"

      echo "Creating a new admin user..."
      password=$(openssl rand -base64 32 2> /dev/null | head -c32)
      run "wp user create 'vincit.admin' wordpress@vincit.fi --role='administrator' --display_name='Administrator' --user_pass='$password'"
      echo "Username: vincit.admin"
      echo "Password: $password"

      if [ "$FORCE_INSTALLER" -eq 1 ]; then
        echo "If the vincit.admin user already existed you might see an error above."
      fi
      ;;
  esac
}

echo "Checking if the default user still exists..."
run "wp user get vagrant --field=ID &> /data/wordpress/usercheck" # We can access that file.

user_id=$(<usercheck)
if grep --quiet Error <<< "$user_id"; then
  echo "Default user (vagrant) not found."
  echo "Assuming existing installation."
  user_id=0 # The interpreter will be very sad if this isn't a number.

  if [ "$FORCE_INSTALLER" -eq 1 ]; then
    echo "Force install enabled."
  else
    echo "To force run the installer, create a file with the name forceinstall to the project root."
    echo "$(pwd) $ touch forceinstall"
  fi
fi
rm usercheck

if [ "$user_id" -eq 1 ]; then
  echo "The default user still exists. The installer should be ran."
  installer
elif [ "$FORCE_INSTALLER" -eq 1 ]; then
  echo "The default user doesn't exist anymore, but force installer is enabled."
  installer
fi

