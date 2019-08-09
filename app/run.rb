require_relative "models/artist"
require_relative "models/gallery"
require_relative "models/painting"
require 'pry'


picasso = Artist.new("Picasso", 20)
leonardo = Artist.new("Leonardo", 25)

g1 = Gallery.new("Gallery 1", "NYC")
g2 = Gallery.new("Gallery 2", "Paris")

pp1 = Painting.new("Clocks", 500000, picasso, g1)
pp2 = Painting.new("The Weeping Woman", 1000000, picasso, g2)

lp1 = Painting.new("Mona Lisa", 6000000, leonardo, g1)
lp2 = Painting.new("The Last Supper", 100000000000000, leonardo, g2)
lp3 = Painting.new("Saint John the Baptist", 4, leonardo, g2)

binding.pry
0