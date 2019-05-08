class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(song_name, artist, genre) 
    @name = song_name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << genre 
    @@artists << artist 
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
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #if the genre key is already in the hash, increment count for that genre 
        genre_count[genre] += 1
      else #if it's a new genre key, add the key and set count to 1
        genre_count[genre] = 1
      end
    end
    genre_count
  end 
  
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] #if the artist key is already in the hash, increment the count 
        artist_count[artist] += 1
      else                            #set the artist key and set count to 1 
        artist_count[artist] = 1
      end
    end
    artist_count
  end
  
end 
