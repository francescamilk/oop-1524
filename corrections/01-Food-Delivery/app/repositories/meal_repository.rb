require 'csv'
require_relative '../models/meal'
require_relative 'base_repository'

class MealRepository < BaseRepository
    private

    def save_csv
        CSV.open(@csv_file_path, "wb") do |csv|
            csv << [ "id", "name", "price" ]
            @elements.each do |meal|
                csv << [ meal.id, meal.name, meal.price ]
            end
        end
    end

    def load_csv
        CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
            # { id:"4" name:"Funghi" price:"12" }
            row[:id]    = row[:id].to_i
            row[:price] = row[:price].to_i

            # When you have to connect to an external Object

            # 1. convert the external_id to integer
            # 2. use the id to call the find method in the right repository
            # 3. assign the retrieved Object 

            ## External Objects should be of their respective Class
            
            @elements << Meal.new(row)
        end
        @next_id = @elements.empty? ? 1 : @elements.last.id + 1
    end
end