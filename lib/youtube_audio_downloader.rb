require 'ostruct'

class YoutubeAudioDownloader

  def self.download_audio(url, outdir, filename, opts={})
    opts = set_default_opts(opts)
    system <<-SH
      cd #{outdir} && \
      youtube-dl \
          --extract-audio \
          --output #{filename} \
          --audio-format #{opts[:format]} \
          --audio-quality #{opts[:quality]} \
          #{"--prefer-ffmpeg" if opts[:prefer_ffmpeg]} \
        #{url} \
        &>/dev/null
    SH
  end

  def self.download_playlist(url, outdir, opts={})
    opts = set_default_opts(opts)
    system <<-SH
      cd #{outdir} && \
      youtube-dl \
          --extract-audio \
          --yes-playlist \
          --audio-format #{opts[:format]} \
          --audio-quality #{opts[:quality]} \
          #{"--prefer-ffmpeg" if opts[:prefer_ffmpeg]} \
        #{url} \
        &>/dev/null
    SH
  end

  class << self
    private
    def set_default_opts(opts)
      OpenStruct.new(opts).tap do |opts|
        opts[:quality] ||= 3
        opts[:format] ||= "mp3"
        opts[:prefer_ffmpeg] ||= true
      end      
    end
  end

end

# Gem.find_files("youtube_audio_downloader/**/*.rb").each &method(:require)
