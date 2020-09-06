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
 
  
  
  def self.destroy_all
    @@all= []
  end
  
  def save
    @@all << self
  end
  
  
  
 def self.create(name)
  created_song = self.new(name)
  created_song.save
  created_song
end

  
end 