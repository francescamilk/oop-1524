class MealsView
    def display(meals)
        meals.each do |meal|
            puts "#{meal.id} - #{meal.name} - #{meal.price}$"
        end
    end

    def ask_name
        puts "What's the name?"
        gets.chomp
    end

    def ask_price
        puts "What's the price?"
        gets.chomp.to_i
    end
end