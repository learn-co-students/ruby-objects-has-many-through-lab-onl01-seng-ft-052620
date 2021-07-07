class Genre
  attr_accessor :name
  
  @@all = []

  def save
    self.class.all << self
  end
  
  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all 
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    songs.collect do |songs| 
      songs.artist
    end
  end
end