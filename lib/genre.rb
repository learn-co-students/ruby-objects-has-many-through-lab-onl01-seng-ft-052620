class Genre 
  attr_accessor :name, :song, :artist 

  @@all = []  

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  def artists 
    songs.map {|song| song.artist}
  end
  
  
  
end


#has many genres, through songs 
# def genres 
#     songs.map {|song| song.genre}
#   end
  
#   def new_song(name, genre)
#     Song.new(name, self, genre)
#   end