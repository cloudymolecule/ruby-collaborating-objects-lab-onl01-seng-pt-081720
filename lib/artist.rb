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
  end

  # def self.create(name)
  #   artist = self.new(name)
  #   artist.name = name
  #   artist
  # end
  #
  # def self.find(name)
  #   self.all.detect { |artist| artist.name == name }
  # end

  def self.find_or_create_by_name(name)
    self.all.detect do |art|
      art.name == name
      binding.pry
    end
  end
end
