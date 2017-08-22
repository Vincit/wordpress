#!/usr/bin/env bash

source customizations/installer.sh

main() {
  while true; do
  clear
  echo ""
  echo -e "           Vincit WordPress Installer "
  echo -e " ┌──────────────────────────────────────────┐"
  echo -e " │    1   Run installer                     │"
  echo -e " │    2   Create a new theme                │"
  echo -e " └──────────────────────────────────────────┘"
  echo -e "      Select an item   -     0   Exit "
  echo ""
  read -s -n1 choix
  case $choix in
    1)
      echo
      installer
      exit
      ;;
    2)
      echo
      theme_installer
      exit
      ;;
    0)
        clear && exit
        ;;
    *)
        echo -e "Wrong option. Press any key to continue."
        read -s -n1
        clear
        ;;
  esac
  done
}

main
