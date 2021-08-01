#!/bin/sh
num="${1:? Please provide an integer to test the conjecture on...}" || exit 1
while [ ! "$num" -eq "1" ] || { echo "Loop begins here"; [ ] ;}; do
  sleep .1
  [ "$((num%2))" = "0" ] && {
    printf '%s / 2' "$num"
    num=$((num/2))
    printf ' = %s\n' "$num"
  } || {
    [ "$((num%2))" != "0" ] && {
      printf '(%s*3)+1' "$num"
      num=$((num*3)); : $((num+=1))
      printf ' = %s\n' "$num"
    }
  }
done
