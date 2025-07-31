#!/bin/bash

# fmpeg -i "C:\Users\Steve\Videos\2025-05-11 21-39-04.mp4" -vn -acodec libmp3lame -q:a 2 "C:\Users\Steve\Videos\2025-05-11 21-39-04.mp3"

i=$1

echo $i

output=`echo $i | sed 's/\.mkv$/.mp3/'`

echo $output


sleep 5
ffmpeg -i "$1"  -q:a 3 -map a "$output"
