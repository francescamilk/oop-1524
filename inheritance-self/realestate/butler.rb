class Butler
    def initialize(castle, name)
        @castle = castle
        @name   = name
    end

    attr_reader :castle, :name

    def water_garden
        "#{@castle.address}'s garden watered!"
    end
end
