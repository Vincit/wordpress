#!/usr/bin/env bash

read -r -p "==> Would you like to conquer the WordPress world? (y/N): " response

case "$response" in
  [yY][eE][sS]|[yY])
    echo "WordPress world conquered."
    ;;
  *)
    echo "Why not?"
    ;;
esac
