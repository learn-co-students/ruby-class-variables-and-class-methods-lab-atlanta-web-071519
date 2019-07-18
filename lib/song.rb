class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    
    @@count += 1 


    @@artists << artist

    
    @@genres << genre
    
  end
  
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
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
    
    for i in @@genres do 
      for j in @@genres do 
        if(i == j)
          count += 1 
          hash[i] = count
        end 
      end
      count = 0
    end
    hash 
  end
  
  
  # other way to do the method above or below
  # hash = {}
  # count = 0 
  # @@artists.each do |artist|
  #     hash[artist] = @@artists.count(artist)
  # end
  # hash
    
  def self.artist_count
    hash = {}
    count = 0 
    
    for i in @@artists do 
      for j in @@artists do 
        if(i == j)
          count += 1 
          hash[i] = count
        end 
      end
      count = 0
    end
    hash
  end
  
  # 
    
end

