require "pry"

class Song
  attr_accessor :name, :artist

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end



  def self.new_by_filename(file)
    cancion = file.split(" - ")
    nueva = Song.new(cancion[1])

    nueva

  end

  def artist_name=(name)

  end

end
