#!/bin/bash

BASE="https://raw.githubusercontent.com/thehorse-rgb/skully/main/frames"
LOOPS=20
FRAMES=100   # falls mehr existieren → erhöhen

clear

for ((l=0; l<LOOPS; l++)); do
  for ((i=0; i<FRAMES; i++)); do
    file=$(printf "frame_%04d.txt" "$i")

    printf "\033[H"
    curl -s "$BASE/$file"
    
  done
done
