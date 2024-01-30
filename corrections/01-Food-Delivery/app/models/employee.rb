class Employee
    def initialize(attrs = {})
        @id       = attrs[:id]
        @username = attrs[:username]
        @password = attrs[:password]
        @role     = attrs[:role]
    end

    attr_reader :username, :password
    attr_accessor :id

    def rider?
        @role == "rider"
    end
end
