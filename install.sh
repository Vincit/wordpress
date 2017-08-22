#!/usr/bin/env bash

source customizations/installer.sh

main() {
  while true; do
  clear
  echo ""
  echo -e "          Vincit WordPress Installer         "
  echo -e " ┌──────────────────────────────────────────┐"
  echo -e " │    1   Run installer                     │"
  echo -e " │    2   Create a new theme                │"
  echo -e " │    3   Create a new plugin               │"
  echo -e " │    9   Show logo                         │"
  echo -e " │    0   Exit                              │"
  echo -e " └──────────────────────────────────────────┘"
  echo -e "               Select an option              "
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
    3)
      echo
      echo "Plugin wizard has not graduated yet. Check back later."
      read -s -n1
      ;;
    9)
      echo
      cat customizations/logo.txt
      read -s -n1
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
