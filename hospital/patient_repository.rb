require 'csv'
require_relative 'patient'

class PatientRepository
    def initialize(csv_file_path)
        @csv_file_path = csv_file_path
        @patients      = []
        @next_id       = 1

        load_csv()
    end

    def all
        @patients
    end

    def create(patient)
        @patients << patient

        # assign the *right* id
        patient.id = @next_id
        @next_id += 1
    end

    private

    def load_csv
        CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
            # { id:"1" name:"francesca" cured:"true" }
            row[:id]    = row[:id].to_i
            row[:cured] = row[:cured] == "true"
            # { id:1 name:"francesca" cured:true }

            @patients << Patient.new(row)
        end
        @next_id = @patients.last.id + 1
    end
end