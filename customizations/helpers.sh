#!/usr/bin/env bash

run() {
  vagrant ssh -- -q -t "$@"
}

# https://unix.stackexchange.com/a/82350
sleep_fraction() {
  /usr/bin/perl -e "select(undef, undef, undef, $1)"
}

recursive_replace() {
  path=$1
  globstr=$2
  search=$3
  replace=$4

  find "$path" -type f -name "$globstr" -exec sed -i '' s/"$search"/"$replace"/ {} +
}
