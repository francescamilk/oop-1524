require_relative "shoe"

## Here we are creating two *instances* of the Shoe *Class*
## 'pink' and 'puma' are part of the *state* of my_shoe

my_shoe = Shoe.new("pink", "puma")
# #<Shoe:0x00000001084a47b0 @color='pink' @brand='puma' @opened=false>

your_shoe = Shoe.new("yellow", "nike")
# #<Shoe:0x00000001032y6346 @color='yellow' @brand='nike' @opened=false>

## Here we are reading the state of each shoe to display some info
puts "This #{my_shoe.brand} shoe is #{my_shoe.color}"
puts "This #{your_shoe.brand} shoe is #{your_shoe.color}"

## Here we are calling the mark_opened! method on my_shoe instance
## && it will change the value for this one pair
my_shoe.mark_opened!
# #<Shoe:0x00000001084a47b0 @color='pink' @brand='puma' @opened=true>
