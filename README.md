This is a gem to download audio from Youtube.

It will work on Unix only because it uses `cd` ... sloppy, I know ...

It has one external dependency, `youtube-dl`, and no bundled Ruby dependencies.
Tested with recent ruby version (>= 2.3) but probably works fine with older versions
such as 1.9.3

There are two methods it provides. Both are class methods on `YoutubeAudioDownloader`.

1. `.download_audio(url, outdir, filename, opts={})`

2. `.download_playlist(url, outdir, opts={})`

The `opts` accepts the following keys (can be strings or symbols)

- quality: Int (default: 3, which is pretty low, so increase if you're an audiophile)
- format: String (default: "mp3")
- prefer_ffmpeg: Boolean (default: true)

There is also a executable called `ytaudio` which offers `get(url, out_dir, filename)` and 
`get_playlist(url, out_dir)` commands.