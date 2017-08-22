#!/usr/bin/env bash

prompt_theme_installer() {
  read -r -t 5 -p"==> Would you like to install the base theme? (y/N)" response
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
  read -r -p "==> And what is the repository URL?  (git@bitbucket...) " repo
  read -r -p "==> Last thing! Would you like to activate the theme? (Y/n) " activate

  composer require vincit/wordpress-theme-base dev-master --prefer-source
  cd htdocs/wp-content/themes || exit 1
  mv wordpress-theme-base "$themename"
  cd "$themename" || exit 1

  recursive_replace "." "*" "wordpress-theme-base" "$themename"

  # Keeping the history might prove useful sometime, don't delete .git folder!
  # git remote remove composer
  git remote remove origin
  git remote add origin "$repo"
  git add .
  git commit -m "Initial commit"
  git push -u origin master

  cd "$rootwd" || exit 1
  recursive_replace "$rootwd" "composer.json" "wordpress-theme-base" "$themename"

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

