This is a script to download audio from youtube video url(s).

It uses a command line interface.

## Dependencies

1. Make sure Python 2.7 or greater is installed using the `python --version` command. If it isn't, look elsewhere to see how to download Python or upgrade the version.

2. Install the [youtube-dl](https://rg3.github.io/youtube-dl/) program with `sudo apt-get install youtube-dl` (for Ubuntu / Debian-based Linux distros) or `brew install youtube-dl` for Mac. 

## How to use

Clone the repo and `cd` into the directory. Run `bundle`.

`chmod +x youtube-audio` to change the permissions on the script to executable.

`./youtube-audio` and  follow the instructions that show up there. 

Press control + C to quit at any time. 

To download playlists:

- find the "share" url of the playlist
- open the program with a 'playlist' argument, i.e. `youtube-audio playlist`
- the program will assume all of the urls entered are playlists. 

## Optional

Add the program's directory to `$PATH` to be able to start it from anywhere.

To use `ya` to start the program instead of `youtube-audio`, enter the following command: `echo -e "\nalias ya='youtube-audio'" >> ~/.bashrc; bash`

If you want to change the audio quality or other options, see the documentation for `youtube-dl`. The program's options are specified  near the
end of the script, in SpinningCursor's `action do` block. p

## Notes

Usually `control+V` doesn't work to paste inside terminals, so to avoid typing out long URLs right click in the terminal and press paste or try `control+shift+V`. Also, on some systems (like OSX), text highlighted in the terminal will automatically be copied (overwriting what was already copied), which can be annoying if it happens unexpectedly.

While the download is in progress, an mp3 and m4a file will be found in the destination directory. The m4a file will be automatically deleted (the audio is extracted from the m4a video and the m4a file is unnecessary afterward).Also, the mp3 file will be incomplete / corrupted if it is opened before the process is completed. 

Unlike a lot of the websites which get audio from youtube, this program doesn't have any limits on the length of the video, so it's easy to download full albums when all the songs are in a single video. 
