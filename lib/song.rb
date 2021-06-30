class Song 
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end 

    def self.artists 
        @@artists.uniq
    end

    def self.genre_count
        aa = {}
        @@genres.map {|genre| 
        if aa.has_key?(genre)
            aa[genre] = aa[genre]+1
        else 
            aa[genre] = 1
        end
        }
        aa
    end

    def self.artist_count
        aa ={} 
        @@artists.map {|artist|
        if aa.has_key?(artist)
            aa[artist] = aa[artist] +1
        else 
            aa[artist] = 1
        end
        }
        aa
    end

end