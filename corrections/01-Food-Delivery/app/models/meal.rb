class Meal
    def initialize(attrs = {})
        @id    = attrs[:id] 
        @name  = attrs[:name]
        @price = attrs[:price]
    end

    attr_reader :name, :price
    attr_accessor :id
end
