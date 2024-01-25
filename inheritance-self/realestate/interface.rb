require_relative 'house'
require_relative 'castle'
require_relative 'skyscraper'

my_house = House.new("Westerkade 21", 20, 50)
my_castle = Castle.new("Dam 4", 10, 10)
my_skyscraper = Skyscraper.new("Ijsbaanpad 9", 30, 60)

p my_skyscraper.introuce_instance

# my_castle.butler = "Fred"
# p my_castle.has_a_butler?

# puts House.price_per_square_meter("Paris")