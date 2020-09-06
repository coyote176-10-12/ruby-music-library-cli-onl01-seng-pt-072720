class Song
  
  extend Concerns::Findable
  
  attr_accessor :name, :artist, :genre
  
  @@all= []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist= artist if artist
    self.genre= genre if genre
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
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end
  
  def self.create(name)
    created_song = self.new(name)
    created_song.save
    created_song
  end
  
  def new_from_filename 
  
  
  end
  
  

  
end 