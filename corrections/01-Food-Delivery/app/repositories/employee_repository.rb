require 'csv'
require_relative '../models/employee'

class EmployeeRepository
    def initialize(csv_file_path)
        @csv_file_path = csv_file_path
        @employees     = []
        @next_id       = 1
        
        load_csv()
    end
    
    def find_by_username(username)
        @employees.find { |employee| employee.username == username }
    end

    private
    
    def load_csv
        CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
            row[:id] = row[:id].to_i

            @employees << Employee.new(row)
        end
        @next_id = @employees.empty? ? 1 : @employees.last.id + 1
    end
end
