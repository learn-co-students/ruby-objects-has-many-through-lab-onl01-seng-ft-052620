class Song  
    attr_accessor :name, :artist, :genre 

    @@all = []    
    
    def initialize(name, artist, genre)    
        self.name = name    
        self.artist = artist    
        self.genre = genre    
        save      
    end      

    def save    
        @@all << self      
    end      

    def self.all    
        @@all      
    end      
end
