require "pry"

class Song
  attr_accessor :name, :artist, :s

  def initialize(name)
    @name = name
    @s = []
    @s << name
  end

  def self.all
    @s
  end

  def self.new_by_filename(file)
    cancion = file.split(" - ")
    nueva = Song.new(cancion[1])

    nueva

  end

  def artist_name=(name)

  end

end

# if (nueva.artist.nil?)
#   nueva.artist = cancion[0]
# else
#   nueva.artist.name = cancion[0]
# end
