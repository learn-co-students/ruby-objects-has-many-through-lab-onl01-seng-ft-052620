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
        Song.all.select { |song| song.genre == self }
        #iterate thru Songs.all & find all songs that belong to this genre
    end

    def artists
        self.songs.map { |song| song.artist }
        # iterate over self.songs & collect the artist that owns each song
    end

end