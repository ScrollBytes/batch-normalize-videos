# batch-normalize-videos
Shell Script to batch normalize videos on Linux using FFMPEG and MP3Gain

## Install FFMPEG and MP3Gain first
Open terminal (CTRL+ALT+T) and type the following commands one at a time:

# If you're using Ubuntu 16.04
* sudo apt-get install ffmpeg
* sudo add-apt-repository ppa:flexiondotorg/audio
* sudo apt-get update
* sudo apt-get install mp3gain

Details on MP3Gain PPA for 16.04 here - https://launchpad.net/~flexiondotorg/+archive/ubuntu/audio

# If you're using Ubuntu 14.04
* sudo add-apt-repository ppa:mc3man/trusty-media
* sudo apt-get update
* sudo apt-get dist-upgrade
* sudo apt-get install ffmpeg
* sudo apt-get install mp3gain

Details on FFMPEG PPA for 14.04 here - http://www.faqforge.com/linux/how-to-install-ffmpeg-on-ubuntu-14-04/

## How to use ...

* Place "normalize.sh" in an empty folder.
* Make it executable by opening terminal (CTRL+ALT+T) and typing "chmod +x /path/to/script/normalize.sh"

## Then ...

1. Copy your videos into same directory as "normalize.sh"
2. Open terminal and type "/path/to/script/normalize.sh" and hit Enter key to run script.
3. Script will normalize all videos in the folder and move original videos into a folder called "bin" where you can decide what you want to do with them.
 

Replace "/path/to/script/" with the actual path on your computer. You can get the path by opening your file manager, right-click on "normalize.sh" and click "Copy path(s)".

Tested on Lubuntu 16.04
