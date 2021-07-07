require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @genre.songs << self
    @artist.songs << self
    @@all << self
  end

def genre
@genre
end

def self.all
  @@all
end





end
