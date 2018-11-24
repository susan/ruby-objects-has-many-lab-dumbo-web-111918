require 'pry'
class Song

  attr_accessor :name, :artist
  @@all = []

	def initialize(name)
		@name = name
		@@all << self
  end

  def self.all
    @@all
  end  

  def artist_name
  	result = nil #set your flag condition to nil
  	if self.artist #if there is a value for self.artist, 
  		#meaning if artist is assoc with song
      result = self.artist.name  #returns artist name if we call artist.name on it?
    end
    result
 end  
end
head_above_water = Song.new("Head Above Water")
#binding.pry