require 'pry-byebug'

def full_name(first, last)
    # capitalize first & last
    first.capitalize
    last.capitalize

    before = "hello"
    binding.pry
    after = "hi!"

    # "Francesca Milk"
    # interpolate & return
    return "#{first} #{last}"
end

## TEST AREA ##
# 1. How do I plan to use the method?
puts full_name("francesca", "milk")
puts full_name("nui", "suriya")

# 2. and what output should it produce?
# => "Francesca Milk"
# => "Nui Suriya"