class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        hash = {}
        count = 0
        @@genres.each do |genre_type|
            hash[genre_type] = @@genres.count(genre_type)
        end
        hash
    end
    def self.artist_count
        hash = {}
        count = 0
        @@artists.each do |artist|
            hash[artist] = @@artists.count(artist)
        end
        hash
    end
end