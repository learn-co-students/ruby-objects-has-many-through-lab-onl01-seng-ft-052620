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

    def new_song(song, genre)
        # binding.pry
        Song.new(song, self, genre)
        #create new song (Song.new(args)), & should know it belongs to this artist
    end

    def songs
        Song.all.select { |song| song.artist == self }
        #iterate over songs.all & find this artist - use .select
    end

    def genres
        self.songs.map { |song| song.genre }
        #iterate over self.songs & collect genres of each song
    end

end