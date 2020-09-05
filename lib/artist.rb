class Artist 
  
  @@all=[]
  
  def initialize(name)
    @name= name 
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all << self
  end
  
  def artist
  
  end
  
  
  def add_song
    
  end



end