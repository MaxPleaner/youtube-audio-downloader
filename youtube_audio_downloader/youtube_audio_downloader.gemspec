require_relative './lib/version.rb'
Gem::Specification.new do |s|
  s.name        = "youtube_audio_downloader"
  s.version     = YoutubeAudioDownloader::VERSION
  s.date        = "2017-07-17"
  s.summary     = "download audio from youtube"
  s.description = ""
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["maxpleaner"]
  s.email       = 'maxpleaner@gmail.com'
  s.required_ruby_version = '~> 2.3'
  s.homepage    = "http://github.com/maxpleaner/youtube-audio-downloader"
  s.files       = Dir["lib/**/*.rb", "bin/*", "**/*.md", "LICENSE"]
  s.require_path = 'lib'
  s.required_rubygems_version = ">= 2.6.11"
  s.add_dependency "thor"
  s.executables = Dir["bin/*"].map &File.method(:basename)
  s.license     = 'MIT'
end
