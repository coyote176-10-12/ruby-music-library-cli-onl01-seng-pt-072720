class Genre 
 
 attr_accessor :name, :songs
  
  @@all= []

  def initialize(name, songs)
  @name= name
  @songs= []
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
  
   def self.create(name)
    new_genre = new(name)
    new_genre.save
    new_genre
  end



end