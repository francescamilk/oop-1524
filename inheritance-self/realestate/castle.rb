require_relative 'building'
require_relative 'butler'

class Castle < Building
    def initialize(address, width, length, butler_name)
        super(address, width, length)
        @butler = Butler.new(self, butler_name)
    end

    def self.categories
        CATEGORIES.join(", ")
    end
    CATEGORIES = ['Medieval', 'Disney', 'Gothic', 'Roman']

    attr_accessor :butler

    def has_a_butler?
        # @butler.class == String
        !@butler.nil?
    end

    # def butler=(butler_name)
    #     @butler = butler_name
    # end

    def test_method
        # super == "output from the parent"
        "#{super} and output from the child"
    end

    def floor_area
        super + 300
    end
end
