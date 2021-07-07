require 'pry'

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
        Song.all.select{|song| song.genre == self}
    end

    def artists
        artists_in_genre = []
        self.songs.each do |song|
            if song.genre == self
                artists_in_genre << song.artist
            end
        end
        artists_in_genre
        # binding.pry
    end
end