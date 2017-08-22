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

  # cd $path || exit 1
  # perl -pi -w -e "s/$search/$replace/g;" $globstr
  find "$path" -type f -name "$globstr" -exec perl -i -p -e 'BEGIN {$from=shift @ARGV; $to=shift @ARGV}; s/\Q$from\E/$to/g' "$search" "$replace" {} +
}
