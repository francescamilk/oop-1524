# define a Student class
class Student
    # setting the @state of the instances
    def initialize(first, last)
        @first = first
        @last  = last
        @challenges_completion = 0
    end

    # attr_reader :first, :last, :challenges_completion

    # instance method (behaviour to interact the state)
    def increment_completion!
        @challenges_completion += 1
    end
end

francesca = Student.new("francesca", "milk")

# p francesca.challenges_completion
francesca.increment_completion!
# p francesca.challenges_completion

# nui       = Student.new("nui", "suriya")
