# Video To Gif Converter CLI

A simple command-line tool that batch converts video files to optimized GIF format.

## Overview

VideoToGifConverter is a bash script that automatically processes all video files in the current directory and converts them to high-quality GIFs. It's perfect for creating shareable animations from video clips without manual intervention.

## Features

- Batch converts multiple video formats (mp4, webm, mov, avi, mkv) to GIF
- Configurable frame rate and output width
- Maintains aspect ratio
- Optimizes GIF quality using palette generation
- Simple command-line interface

## Requirements
- [FFmpeg](https://ffmpeg.org/) installed on your system

## Installation

1. Clone this repository or download the script:
   ```bash
   git clone https://github.com/ErenEksen/VideoToGifConverter-cli.git
   cd VideoToGifConverter-cli
   ```

2. Make the script executable:
   ```bash
   chmod +x VideoToGifConverter.sh
   ```

## Usage

Place the script in the directory with your video files and run:

```bash
./VideoToGifConverter.sh
```

### Options

The script accepts the following optional parameters:

- `-f <number>`: Set the frame rate (frames per second) of the output GIF (default: 10)
- `-s <number>`: Set the width of the output GIF in pixels (default: 320)

### Examples

Convert all videos with default settings:
```bash
./VideoToGifConverter.sh
```

Convert videos with 15 frame rate:
```bash
./VideoToGifConverter.sh -f 15
```

Convert videos with width as 480:
```bash
./VideoToGifConverter.sh -s 480
```

Convert videos with both 15 frame rate and width as 480:
```bash
./VideoToGifConverter.sh -f 15 -s 480
```

## Output

For each video file in the directory, the script will create a corresponding GIF file with the same name but with a `.gif` extension.

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests to improve this tool. Actually it will not be required probably. It is just a simple bash script. But you are always welcome.
