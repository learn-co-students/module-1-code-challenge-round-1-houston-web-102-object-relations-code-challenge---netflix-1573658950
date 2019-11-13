# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("George")
v2 = Viewer.new("New Guy")
m1 = Movie.new("Lord of the rings")
m2 = Movie.new("harry potter")

r1 = Review.new(v1, m2 ,100)
r2 = Review.new(v1, m1 ,"100")
r3 = Review.new(v1, m2 ,"100")







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
