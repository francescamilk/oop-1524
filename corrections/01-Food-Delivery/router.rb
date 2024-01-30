class Router
    def initialize(meals_controller, customers_controller, sessions_controller)
        @meals_controller     = meals_controller
        @customers_controller = customers_controller
        @sessions_controller  = sessions_controller
        @current_user         = nil
        @running              = true
    end

    def run
        while @running
            @current_user = @sessions_controller.login
            if @current_user.rider? 
                puts "TODO: refactor into rider menu"
            else
                puts "TODO: refactor into manager menu"
            end
            # display_actions()
            # action = gets.chomp.to_i
            # route_action(action)
        end
    end

    private

    def display_actions
        puts "1. Add a new meal"
        puts "2. List all meals"
        puts "3. Add a new customer"
        puts "4. List all customers"
        puts "5. Quit"
    end

    def route_action(action)
        case action
        when 1 then @meals_controller.add
        when 2 then @meals_controller.list
        when 3 then @customers_controller.add
        when 4 then @customers_controller.list
        when 5 then @running = false
        else
            puts "Please provide a valid choice..."
        end
    end
end
