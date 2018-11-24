class Author
  
  attr_accessor :name
  @@all =[]
  def initialize(name)
	  @name = name
	  @posts =[] #initialize with empty post array as we want to collect what they write
  end	

  def posts
    @posts
  end

  def add_post(post)
  	@posts << post
  	@@all << post
  	post.author = self #self is the author so if you write post.author you will get author
     #the receiver is post.author 
     #in order to call author, i had to define class for post and also give it attribute of author 
  end

  def add_post_by_title(title)
    post = Post.new(title) # am I calling what i created in post here? how do the two
    #classes interact? did I need to have the post class? did i need anything else
    @posts << post
    @@all << post
  	post.author = self #note we have to associate author with this again, are we using the post.author
  	#from the post class. YES
  end

  def self.post_count
  	@@all.length
  end	

end	