#!/bin/bash

# Rename *.mp3.wav to *.wav
for file in *.mp3.wav; do
  # Skip if no matching files
  [ -e "$file" ] || continue

  # Remove .mp3 from the name
  newname="${file%.mp3.wav}.wav"

  # Rename the file
  mv -- "$file" "$newname"
  echo "Renamed: $file -> $newname"
done
