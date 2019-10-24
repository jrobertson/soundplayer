Gem::Specification.new do |s|
  s.name = 'soundplayer'
  s.version = '0.1.0'
  s.summary = 'Cross-platform sound player (WAV, MP3, Ogg Vorbis, and FLAC)'
  s.authors = ['James Robertson']
  s.files = Dir['lib/soundplayer.rb']
  s.add_runtime_dependency('ruby2d', '~> 0.9', '>=0.9.2')
  s.add_runtime_dependency('wavefile', '~> 1.1', '>=1.1.0')
  s.signing_key = '../privatekeys/soundplayer.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/soundplayer'
end
