#!/usr/bin/env bash

theme_installer() {
  rootwd=$0 # Passed into, use later.

  read -r -p -t 5 "==> Would you like to install the base theme? (y/N)" response
  case "$response" in
    [yY][eE][sS]|[yY])
      read -r -p -t 5 "==> Great! What name do you want to give to it? [A-Za-z0-9_]" themename
      composer require vincit/wordpress-theme-base dev-master --prefer-source
      cd htdocs/wp-content/themes || exit 1
      mv wordpress-theme-base "$themename"

      recursive_replace "." "*" "wordpress-theme-base" "$themename"


      cd "$rootwd" || exit 1
      recursive_replace "$rootwd" "composer.json" "wordpress-theme-base" "$themename"
    ;;
  *)

    echo "Skipping base theme installation..."
  esac
}

