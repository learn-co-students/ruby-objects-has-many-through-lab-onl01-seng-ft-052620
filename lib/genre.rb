class Genre
  attr_accessor :name, :songs, :artists
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

def self.all
  @@all
end

def self.songs
  @songs
end


def artists
Song.all.select do |song|
@artists << song.artist if song.artist.genres.include?(self)
end
@artists
end

end
