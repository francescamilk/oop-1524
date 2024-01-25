require_relative 'building'

class Skyscraper < Building
    # in a method definition, self references the *Class*
    def self.class_method
    end

    def introuce_instance
        # in the body of an istance method, self references the given *instance*
        return self
    end
end
