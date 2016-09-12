#!/bin/bash

## current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## make bin folder name - outside of loop
currenttime=$(date +"%I-%M-%S")
binfoldername="bin-$currenttime"


## foreach file in current directory
FILES="$DIR/*"
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  
  
  if [[ $f == *".mp4"* ]]
	then
	
	
	  ## current directory path
	  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	  
	
	  ## get filename with and without extension and path
	  filename=$(basename "$f")
	  extension="${filename##*.}"
	  filename="${filename%.*}"	
	  ##end
	
	  ## convert video to mp3	
	  ffmpeg -i "$f" -b:a 320K -vn "$DIR/$filename.mp3"
	  
	  ## normalise that mp3
	  mp3gain -r "$DIR/$filename.mp3"
	  
	  # attach it back - on a new video file
	  ffmpeg -i "$f" -i "$DIR/$filename.mp3" -map 0:0 -map 1:0 -vcodec copy -acodec copy "$DIR/$filename-normal.mp4"
	  
	  
	  
	  
	  
	  
	  ## move extra files to folder
	  
	  ##make folder
	  mkdir -p "$DIR/$binfoldername"
	  
	  ## move files
	  mv "$f" "$DIR/$binfoldername"
	  mv "$DIR/$filename.mp3" "$DIR/$binfoldername"
	  
	  
	fi
  
done
