# batch-normalize-videos
Shell Script to batch normalize videos on Linux using FFMPEG and MP3Gain

##Install FFMPEG and MP3Gain
Open terminal (CTRL+ALT+T) and type the following commands one at a time.

* sudo apt-get install ffmpeg
* sudo apt-get install mp3gain

On versions of linux before 16.04 you'll have to install FFMPEG another way such as this - http://www.faqforge.com/linux/how-to-install-ffmpeg-on-ubuntu-14-04/

## How to use ...

* Place "normalize.sh" in an empty folder.
* Make it executable by opening terminal (CTRL+ALT+T) and typing "chmod +x /path/to/script/normalize.sh"

Replace "/path/to/script/" with the actual path on your computer. You can get the path by opening your file manager, right-click on "install-fonts.sh" and click "Copy path(s)".

## Then ...

Copy your zip folders with TTF or OTF fonts into same directory as "install-fonts.sh"
Open terminal and type "/path/to/script/install-fonts.sh" and hit Enter key to run script.
Fonts will be installed (moved to Lubuntu fonts directory)!


Tested on Lubuntu 14.04
