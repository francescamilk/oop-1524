class BaseRepository
    def initialize(csv_file_path)
        @csv_file_path = csv_file_path
        @elements     = []
        @next_id       = 1

        load_csv() if File.exist?(csv_file_path)
    end

    def all
        @elements
    end

    def find(id)
        @elements.find { |element| element.id == id }
    end

    def create(element)
        element.id = @next_id
        @next_id += 1
        
        @elements << element
        save_csv()
    end
end