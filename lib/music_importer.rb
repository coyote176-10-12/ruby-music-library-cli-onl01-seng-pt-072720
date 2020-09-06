class MusicImporter 
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files
   filename = Dir.glob("#{path}/*.mp3")
   filename = filename.collect{|a_string| a_string.sub("#{path}/", "")}
  end
  
  

end