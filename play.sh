#!/bin/bash

BASE="https://raw.githubusercontent.com/thehorse-rgb/skully/main/frames"
TMP="/tmp/skully_frames"
DELAY=0.03
FRAMES=100
LOOPS=20

mkdir -p "$TMP"

echo "Downloading frames..."

for i in $(seq -w 0 99); do
  curl -s "$BASE/frame_${i}.txt" -o "$TMP/frame_${i}.txt"
done

echo "Playing animation..."
clear

for ((l=0; l<LOOPS; l++)); do
  for i in $(seq -w 0 99); do
    printf "\033[H"
    cat "$TMP/frame_${i}.txt"
    sleep "$DELAY"
  done
done

echo "Cleaning up..."
rm -rf "$TMP"
