class Genre

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
    new_array = []
    Song.all.each do|song|
      if song.genre == self
        new_array << song
      end
    end
    new_array
  end

  def artists
    new_array = []
    Song.all.each do|song|
      if song.genre == self
        new_array << song.artist
      end
    end
    new_array
  end

end
