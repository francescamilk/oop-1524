class Building
    def initialize(address, width, length)
        @address = address
        @width   = width
        @length  = length
    end

    attr_reader :address, :width, :length

    def test_method
        return "output from the parent"
    end

    def floor_area
        @width * @length
    end
end
