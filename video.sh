#!/bin/bash
for file in *.webm; do
    ffmpeg -i "$file" -c:v libx264 -c:a aac "${file%.webm}.mp4"
done
