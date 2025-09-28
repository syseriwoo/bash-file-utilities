#!/bin/bash

# Rename all *.m4a to *.mp3
# Rename all video files to *.mp4
# Rename all img files to *.png

for i in *.m4a; do
    echo $i
    mv -- "$i" "${i%.m4a}.mp3"
done

for i in *.MOV; do
    echo $i
    mv -- "$i" "${i%.MOV}.mp4"
done

for i in *.mov; do
    echo $i
    mv -- "$i" "${i%.mov}.mp4"
done

for i in *.MP4; do
    echo $i
    mv -- "$i" "${i%.MP4}.mp4"
done

for i in *.PNG; do
    echo $i
    mv -- "$i" "${i%.PNG}.png"
done

for i in *.JPG; do
    echo $i
    mv -- "$i" "${i%.JPG}.png"
done

for i in *.jpg; do
    echo $i
    mv -- "$i" "${i%.jpg}.png"
done

for i in *.jpeg; do
    echo $i
    mv -- "$i" "${i%.jpeg}.png"
done

for i in *.heic; do
    echo $i
    mv -- "$i" "${i%.heic}.png"
done

for i in *.HEIC; do
    echo $i
    mv -- "$i" "${i%.HEIC}.png"
done

for i in *.webp; do
    echo $i
    mv -- "$i" "${i%.webp}.png"
done

for i in *.WEBP; do
    echo $i
    mv -- "$i" "${i%.WEBP}.png"
done