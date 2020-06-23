class Genre 

attr_accessor  :name, :genre, :artist

@@all = []

def initialize(name)
  @name = name 
  @@all << self 
end 

def self.all 
  @@all << self 
end 

def songs 
  Song.all.select { |song| song.genre == self }
end 

def artists
  self.songs.map { |song| song.artist }
end

end
 

