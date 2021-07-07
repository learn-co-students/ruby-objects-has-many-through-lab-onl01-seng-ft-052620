require 'pry'
class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    new_song
    #binding.pry
  end
  
  def genres
    songs = self.songs
    genres = songs.collect do |song|
      song.genre
    end
    genres
  end
end