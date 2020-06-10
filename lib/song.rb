class Song
	@@all = []
	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		if artist.class != Artist || genre.class != Genre
			raise TypeError, "expects artist.class to be Artist and genre.class to be Genre" 
		end
		@name = name
		@artist = artist
		@genre = genre
		@@all << self
	end

	def self.all 
		@@all 
	end

end
