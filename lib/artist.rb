class Artist  
  
attr_accessor :name, :genres, :songs 

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs  
 Song.all.select { |song| song.artist == self}
end

def new_song(name, genre)
   Song.new(name,self,genre)
end

def genres
  retgenres = self.songs.map { |song| song.genre }
  retgenres = retgenres.uniq
end

end 