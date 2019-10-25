#!/usr/bin/env ruby 

# file: soundplayer.rb

# description: Cross-platform sound player

require 'ruby2d'
require "wavefile"
require "ogginfo"
include WaveFile

class Sound

  def self.play(filename)

    Sound.new(filename).play
    
    seconds = case File.extname(filename)[1..-1].to_sym
    when :wav
      reader = Reader.new(filename)
      duration = reader.total_duration
      duration.seconds + (duration.milliseconds) / 1000.0
    when :ogg
      OggInfo.open(filename).length
    end
    
    sleep seconds

  end

end

