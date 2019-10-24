#!/usr/bin/env ruby 

# file: soundplayer.rb

# description: Cross-platform sound player

require 'ruby2d'
require "wavefile"
include WaveFile

class Sound

  def self.play(filename)

    Sound.new(filename).play
    reader = Reader.new(filename)
    duration = reader.total_duration
    sleep duration.seconds + (duration.milliseconds) / 1000.0

  end

end

