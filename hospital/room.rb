class Room
    def initialize(attrs = {})
        @capacity = attrs[:capacity]
        @patients = []
    end

    attr_reader :capacity, :patients

    def add_patient(patient)
        if self.can_admit?
            @patients << patient

            # assign the room to the patient
            patient.room = self
        end
    end

    private

    def can_admit?
        !(@patients.size == @capacity)
    end
end
