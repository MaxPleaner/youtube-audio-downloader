This is a script to download audio from youtube video url(s).

It provides a CLI interface, so all the following commands should be entered into a Terminal.

It should work on Linux and Mac.

## How to install

1. Make sure Python 2.7 or greater is installed using the `python --version` command. If it isn't, look elsewhere to see how to download Python or upgrade the version.

2. Install the [youtube-dl](https://rg3.github.io/youtube-dl/) program with `sudo apt-get install youtube-dl` (for Ubuntu / Debian-based Linux distros) or `brew install youtube-dl` for Mac. 

3. Open the youtube-audio script [here](https://raw.githubusercontent.com/MaxPleaner/youtube-audio-downloader/master/youtube-audio) in your browser and save it to your `Downloads` folder.

4. Enter the following command to make the file executable: `chmod +x ~/Downloads/ydl-audio`

5. So that the command will be available anywhere on your computer, move the script to /usr/bin with the following command: `sudo mv ~/Downloads/youtube-audio /usr/bin/youtube-audio`

## How to use

Once installed, enter `youtube-audio` in a terminal and follow the instructions that show up there. 