require_relative 'genre.rb'
require_relative 'song.rb'

class Artist
attr_reader :name, :songs

@@all=[]

   def initialize(name)
    @name=name
    save
   end

   def save
    @@all << self
   end

   def self.all
    @@all
   end

   def new_song(name, genre)
   Song.new(name, self, genre)
    end


   def songs
    Song.all.map{|k| k if k.artist.name == self.name}.select{|k| k}
   end

   def genres
    Song.all.map{|k| k.genre if k.artist.name == self.name}.select{|k| k}
   end





end