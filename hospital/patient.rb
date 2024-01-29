class Patient
    def initialize(attrs = {})
        @id    = attrs[:id]
        @name  = attrs[:name]
        @cured = attrs[:cured] || false
    end

    attr_reader :name
    attr_accessor :room, :id

    def cured?
        @cured
    end

    def cure!
        @cured = true
    end
end
