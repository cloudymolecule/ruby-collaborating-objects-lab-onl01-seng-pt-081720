require "pry"

class Song
  attr_accessor :name, :artist
  
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
    nueva.artist_name = cancion[0]
    nueva

  end



end

# if (nueva.artist.nil?)
#   nueva.artist = cancion[0]
# else
#   nueva.artist.name = cancion[0]
# end
