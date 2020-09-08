require "pry"
class Artist
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @@all << self
  end

  def find_or_create_by_name(name)
    @@all.each do |art|
      binding.pry
    end
  end

end
