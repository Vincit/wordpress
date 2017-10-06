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
  read -r -n1 -p "==> Would you like some fri- sample content with it? (Y/n) " content
  echo
  read -r -n1 -p "==> Do you want to track it in Git? (y/N) " git

  case "$git" in
    [yY])
      read -r -p "==> And what is the repository URL?  (git@bitbucket...) " repo
    ;;
  esac

  read -r -n1 -p "==> Last thing! Would you like to activate the theme? (Y/n) " activate
  echo

  composer require vincit/wordpress-theme-base dev-master --prefer-source
  cd htdocs/wp-content/themes || exit 1
  mv wordpress-theme-base "$themename"
  cd "$themename" || exit 1

  recursive_replace "." "*" "wordpress-theme-base" "$themename"

  echo "Installing dependencies and building the theme..."
  npm install
  composer install

  case "$git" in
    [yY])
      # Keeping the history might prove useful sometime, don't delete .git folder!
      # git remote remove composer
      git remote remove origin
      git remote add origin "$repo"
      git add .
      git commit -m "Initial commit"
      git push -u origin master
    ;;
  *)
    rm -rf .git
  esac

  cd "$rootwd" || exit 1
  # recursive_replace "$rootwd" "composer.json" "wordpress-theme-base" "$themename"
  composer remove vincit/wordpress-theme-base

  case "$content" in
    [nN][oO]|[nN])
      echo "No sample content created."
    ;;
  *)
    echo "Creating sample content..."
    run "wp plugin install wordpress-importer --activate"
    run "wget -O /data/wordpress/sampledata.xml https://raw.githubusercontent.com/WPTRT/theme-unit-test/master/themeunittestdata.wordpress.xml"
    run "wp import /data/wordpress/sampledata.xml --authors=skip >/dev/null 2>&1; rm /data/wordpress/sampledata.xml" # Nags about deprecated stuff.
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


  esac

  case "$activate" in
    [nN][oO]|[nN])
      echo "Skipping theme activation..."
    ;;
  *)
    echo "Activating theme $themename..."
    run "wp theme activate $themename"
  esac


  echo "Theme generated."

  case "$git" in
    [yY])
      echo "The theme has a Git repository, and needs to be managed by Composer."
      echo "Add the theme to (Private) Packagist: https://packagist.com/orgs/vincit/packages/add"
      echo "Then require the theme from the project root: composer require vincit/$themename dev-master --prefer-source"
    ;;
  *)
    git add -f "htdocs/wp-content/themes/$themename"
    git commit -m "Generate theme $themename"
    echo "The theme is now tracked by Git."
  esac
}
