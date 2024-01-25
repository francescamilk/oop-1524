require_relative 'butler'
require_relative 'castle'

castle = Castle.new("Dam 4", 10, 10, "Fred")
butler = castle.butler

p butler.name
