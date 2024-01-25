require_relative 'castle'

castle1 = Castle.new("Dam 4", 300, 200)
castle2 = Castle.new("Westerkade 4", 300, 200)
castle3 = Castle.new("Bethanienstraat 4", 300, 200)
castle4 = Castle.new("Ijsbaapad 4", 300, 200)

castles = [castle1, castle2, castle3, castle4]

puts "All the categories that we deal with:"
puts Castle.categories

puts "Our castles offer:"
castles.each do |castle|
    puts "- #{castle.address} - #{castle.floor_area}"
end