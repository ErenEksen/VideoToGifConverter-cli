#!/bin/bash

# Set default values
fps=10
width=320

# Parse command-line options
while getopts "f:s:" opt; do
    case "$opt" in
        f) fps="$OPTARG";;
        s) width="$OPTARG";;
        \?) echo "Invalid option: -$OPTARG"; exit 1;;
        :) echo "Option -$OPTARG requires an argument."; exit 1;;
    esac
done

# Validate fps and width
if ! [[ "$fps" =~ ^[0-9]+$ ]] || [ "$fps" -le 0 ]; then
    echo "Error: FPS must be a positive."
    exit 1
fi

if ! [[ "$width" =~ ^[0-9]+$ ]] || [ "$width" -le 0 ]; then
    echo "Error: Width must be a positive."
    exit 1
fi

# Loop through all video files and convert to GIF
for file in *.{mp4,webm,mov,avi,mkv}; do
    if [ -f "$file" ]; then
        echo "Converting $file to ${file%.*}.gif"
        ffmpeg -t 15 -i "$file" -filter_complex "fps=$fps,scale=$width:-1:flags=lanczos[x];[x]split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loglevel error "${file%.*}.gif"
    fi
done
