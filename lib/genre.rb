class Genre
    attr_accessor :name

    @@all_genres=[]

    def initialize(name)
        @name=name
        @@all_genres<<self
    end

    def self.all
        @@all_genres
    end

    def songs
        Song.all.select {|song| song.genre==self}
    end

    def artists
        songs.map {|song| song.artist}
    end
    

end