class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    results = []
    Review.all.each do| review |
    if review.movie == self
      results.push(review)
      end
    end
    results
  end
  def reviewers
    results = []
    Review.all.each do | review |
      if review.movie == self
        results.push(review.viewer)
      end
    end
    results
  end

  def self.all
    @@all
  end

end
