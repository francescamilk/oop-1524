class CustomersView
    def display(customers)
        customers.each do |customer|
            puts "#{customer.id} - #{customer.name} - #{customer.address}"
        end
    end

    def ask_for(thing)
        puts "What's the #{thing}?"
        gets.chomp
    end
end