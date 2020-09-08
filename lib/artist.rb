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

  def add_song(name)
    @songs << name
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      name = self.new 
  end

end
