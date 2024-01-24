# NAMING CONVENTION #
#### shoe.rb      singular & lower_snake_case
#### class Shoe   singular & UpperCamelCase

class Shoe
    ## constructor method: gets called when Shoe.new ##
    def initialize(color, brand)
        # sets the @instance_variables for the new Shoe
        @color  = color
        @brand  = brand
        @opened = false
    end

    ## reader == reading permissions && writer == writing permissions ##
    # attr_reader :color, :brand
    # attr_writer :color, :brand

    ## accessor == reader = writer ##
    attr_accessor :color, :brand

    def opened?
        return @opened
    end

    ## instance method to perform custom behaviour on specific show ##
    def mark_opened!
        # calls those methods from the private interface
        refund_customer()
        send_confirmation_email()
        
        @opened = true
    end

    ## those are equivalent to att_reader ##
    # # instance method to expose value of @instance_variable
    # def brand
    #     # access the given instance, return the value for @brand
    #     return @brand
    # end

    # def color
    #     return @color
    # end

    ## those are equivalent to att_writer ##
    # def brand=(new_brand)
    #     @brand = new_brand
    # end

    # def color=(new_color)
    #     @color = new_color
    # end

    # everything below this keyword, will be only usable within the Class
    private

    # this is just an example! we still don't puts in methods ;D
    def send_confirmation_email
        puts "Sending refund confirmation..."
    end

    def refund_customer
        puts "I am contacting the bank..."
        puts "I am refunding the customer..."
    end
end
