class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    results = []
    Review.all.each do | review |
      if review.viewer == self
        results.push(review)
      end
    end
    results
end

 def reviewed_movies
  results = []
  Review.all.each do | review |
    if review.viewer == self
      results.push(review.movie)
      end
    end
    results
 end

  def reviewed_movie?(movie)  #<- lord of the rings
    reviewed_movies.each do | reviewed_movie | #<-harry potter                
      if reviewed_movie == movie
        return true
      end
    end
    return false
  end

  def rate_movie(movie,rating)
      if reviewed_movie?(movie) == false
        return Review.new(self,movie,rating)
      end
  end

  def self.all
    @@all
  end
  
end
