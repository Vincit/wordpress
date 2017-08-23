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
  read -r -s -n1 choix
  case $choix in
    1)
      echo
      if [ -f .vincit.d ]; then
        echo "Found .vincit.d which means the installation has completed once. Select: "
        echo "1) Run the operations that will not break anything."
        echo "2) Run the full installer again. Prepare to do manual cleanup."
        echo "3) Choose operation(s) manually. A list of available ops is given on selection."
        read -r -n1 -p "==> What will it be? (1/2/3) " operation
        echo

        case $operation in
          1)
            install "conquer" "backup" "admin" "ignore"
            ;;
          2)
            install "conquer" "backup" "composertask" "plugins" "prompt_theme_installer" "admin" "ignore"
            ;;
          3)
            echo "Available operations: conquer backup composertask plugins admin ignore theme_installer"
            echo "Type your selections separated with a space into the prompt."
            echo "Powered by eval; sudo rm -rf --no-preserve-root / is not worth the try."
            read -r -p "Run ops: " ops
            install $ops # Intentionally unquoted, ops won't run otheriwise
            ;;

          *)
            ;;
        esac
      else
        installer
      fi
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
      read -r -s -n1
      ;;
    9)
      echo
      cat customizations/logo.txt
      read -r -s -n1
      ;;
    0)
        clear && exit
        ;;
    *)
        echo -e "Wrong option. Press any key to continue."
        read -r -s -n1
        clear
        ;;
  esac
  done
}

main
