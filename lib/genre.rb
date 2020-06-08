require_relative 'song.rb'
require_relative 'artist.rb'

require 'pry'

class Genre
    attr_reader :name
@@all =[]
    def initialize(genre)
        @name= genre
        @@all<< self
    end

    def self.all
    @@all
    end

    def songs
        Song.all.map{|k| k if k.genre.name == self.name}.select{|k| k}
    end

    def artists
        Song.all.map{|k| k.artist if k.genre.name == self.name}.select{|k| k}
    end
end
