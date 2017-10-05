#!/usr/bin/env bash

prompt_theme_installer() {
  read -r -t 5 -n1 -p "==> Would you like to install the base theme? (y/N) " response
  echo
  case "$response" in
    [yY][eE][sS]|[yY])
      theme_installer
    ;;
  *)

    echo "Skipping base theme installation..."
  esac
}

theme_installer() {
  rootwd=$(pwd)
  read -r -p "==> Great! What name do you want to give to it? [A-Za-z0-9_] " themename
  read -r -n1 -p "==>  Would you like some fri- sample content with it? (Y/n) " content
  read -r -p "==> What is the URL of the WordPress instance that WDS should proxy from? Default is https://wordpress.local: " proxy
  read -r -p "==> And what is the repository URL?  (git@bitbucket...) " repo
  read -r -n1 -p "==> Last thing! Would you like to activate the theme? (Y/n) " activate
  echo

  composer require vincit/wordpress-theme-base dev-master --prefer-source
  cd htdocs/wp-content/themes || exit 1
  mv wordpress-theme-base "$themename"
  cd "$themename" || exit 1

  recursive_replace "." "*" "wordpress-theme-base" "$themename"
  recursive_replace "." "*" "https://wordpress.local" "$proxy"
  
  echo "Installing dependencies and building the theme..."
  npm install
  composer install

  # Keeping the history might prove useful sometime, don't delete .git folder!
  # git remote remove composer
  git remote remove origin
  git remote add origin "$repo"
  git add .
  git commit -m "Initial commit"
  git push -u origin master

  cd "$rootwd" || exit 1
  recursive_replace "$rootwd" "composer.json" "wordpress-theme-base" "$themename"
  rm composer.lock # The lockfile contains traces of wordpress-theme-base, and it has to go.
  
  case "$content" in
    [nN][oO]|[nN])
      echo "No sample content created."
    ;;
  *)
    echo "Creating sample content..."
    run "wp plugin install wordpress-importer --activate"
    run "wget https://raw.githubusercontent.com/WPTRT/theme-unit-test/master/themeunittestdata.wordpress.xml > /data/wordpress/sampledata.xml"
    run "wp import /data/wordpress/sampledata.xml --authors=skip; rm /data/wordpress/sampledata.xml"
  esac

  case "$activate" in
    [nN][oO]|[nN])
      echo "Skipping theme activation..."
    ;;
  *)
    echo "Activating theme $themename..."
    run "wp theme activate $themename"
  esac


  echo "Theme generated. Assuming you provided a valid repository URL, the initial commit has been pushed."
  echo "Remember to add it to Private Packagist or Composer will refuse to work: https://packagist.com/orgs/vincit/packages/add"

}

