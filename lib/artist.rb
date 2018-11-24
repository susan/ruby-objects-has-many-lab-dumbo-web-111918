require 'pry'
class Artist
  attr_accessor :name

  def initialize(name)
	  @name = name
	  @songs = [] #we initialize with empty collection
  end

  @@all = []

  def add_song(song)
  #   song.artist = song # this is wrong because you want to get artist back when
  #you write song.artist. What do you want to get back? the name of the artist.
  #Here, we use the self keyword to refer 
  #to the particular instance of the artist on which we are calling this method. 
    @songs << song #add the song here
    @@all  << song
    song.artist = self
  end  

  def songs
  	@songs #returns the songs artist has
  end	

  def add_song_by_name(song_name)
    song = Song.new(song_name) #we get the song back if we call Song.new and give 
    #it a parameter of song name. Song.new creates something by definition.
    @songs << song # if i write Springsteen.songs , I will get this song in the collection
    @@all << song
    song.artist = self #associates song with the artist
  end	
    
    # def count_per_artist
    # 	self.songs.length
    # 	@@all_count << self.songs.length
    # end	

  def self.song_count
  	@@all.length
    # sum = @@all_count.inject(0) do |total, number|
    # 	total = total + number 
    # end	
    # sum
  end  
end	
binding.pry

Susan = Artist.new("Susan")