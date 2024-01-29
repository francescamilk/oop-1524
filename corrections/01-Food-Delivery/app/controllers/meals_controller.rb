require_relative "../views/meals_view"

class MealsController
    def initialize(repo)
        @repo = repo
        @view = MealsView.new
    end

    def list
        # Fetch data from the repo
        meals = @repo.all

        # Pass data to the view to display it
        @view.display(meals)
    end

    def add
        # Ask for name and price (storing in var)
        name  = @view.ask_name
        price = @view.ask_price

        # Use the user data to create Meal
        meal = Meal.new(name: name, price: price)

        # Pass the meal to the repo to save it
        @repo.create(meal)
    end
end