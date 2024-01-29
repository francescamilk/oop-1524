class Customer
    def initialize(attrs = {})
        @id      = attrs[:id]
        @name    = attrs[:name]
        @address = attrs[:address]
    end

    attr_reader :name, :address
    attr_accessor :id
end
