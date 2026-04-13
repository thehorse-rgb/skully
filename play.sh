#!/bin/bash

DIR="frames"
DELAY=0.03
LOOPS=20

clear

i=0
while [ "$i" -lt "$LOOPS" ]; do
  for f in "$DIR"/frame_*.txt; do
    printf "\033[H"
    cat "$f"
    sleep "$DELAY"
  done
  i=$((i + 1))
done
