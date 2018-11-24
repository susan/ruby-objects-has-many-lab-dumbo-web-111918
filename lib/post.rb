class Post

  attr_accessor :title, :author
  @@all = []

  def initialize(title)
	  @title = title
    @@all << self
  end	

  def self.all
  	@@all
  end	

  def author_name
    result = nil
      if self.author #if the object has an author
     	  result = self.author.name #have to call name on it
     	  #why didnt it work to say Post.author or post.author,
     	  #why did I have to use self.author
     end
    result
  end	
end	