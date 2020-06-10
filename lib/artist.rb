class Artist
    @@all = []

    attr_accessor :all
    def initialize()
        @@all << self
    end


end