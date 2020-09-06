class Artist
  
  attr_accessor :name, :songs
  
  @@all=[]
  
  def initialize(name)
    @name= name 
    @songs= []
  end
  
  def self.all
    @@all
  end
  
  def self.create(name)
    new_artist = new(name)
    new_artist.save
    new_artist
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all << self
  end
  
   def add_song
    
  end
  
  def artists
    songs.collect{|s| s.artist }.uniq
  end




end