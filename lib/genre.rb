class Genre
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @genre = genre
        @name =  name
        @@all << self
    end

    def songs
        Song.all.select { |song| song.genre == self }
    end

    def self.all
        @@all
   end

   def artists
    songs.map do |song|
      song.artist
    end 
end

end
