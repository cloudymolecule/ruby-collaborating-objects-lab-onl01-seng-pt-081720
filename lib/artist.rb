require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    binding.pry
  end

  def self.find_or_create_by_name(name)
    @@all.each do |art|
      if art.artist == name
        return art.artist
      else
        Artist.new(name)
      end
    end

  end

end
