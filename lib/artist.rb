require "pry"
class Artist
  attr_reader :name
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

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    songs = Song.all.select do |song|
      song.artist == self
    end
    songs
  end

  def genres
    songs.collect do |songs|
      songs.genre
    end

  end

end