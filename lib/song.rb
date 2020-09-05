class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@all= []
  
  def initialize(name,artist=nil,genre=nil)
    @name = name
    # @artist = artist
    self.artist=(artist) if !artist.nil?
    # @genre = genre
    self.genre=(genre) if !genre.nil?
  end
  
  def self.all
    @@all
 end
 
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
   def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end
  
  def self.destroy_all
    @@all= []
  end
  
  def save
    @@all << self
  end
  
  

  
end 