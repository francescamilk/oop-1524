class SessionsView
    def ask_for(thing)
        puts "What's your #{thing}?"
        gets.chomp
    end

    def welcome
        puts "Welcome to the application!"
    end

    def wrong_credentials
        puts "Wrong credentials, try again..."
    end
end