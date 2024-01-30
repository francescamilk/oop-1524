require_relative '../views/sessions_view'

class SessionsController
    def initialize(repo)
        @repo = repo
        @view = SessionsView.new
    end 

    def login
        # 1. Ask for username (View)
        username = @view.ask_for(:username)
        # 2. Ask for password //
        password = @view.ask_for(:password)

        # 3. Find the employee by username (Repo)
        employee = @repo.find_by_username(username)

        # 4. Check if employee exists, && password is correct
        if employee && employee.password == password
            @view.welcome
            return employee
        else
            @view.wrong_credentials
            login()
        end

        # 5. Display message according     (View)
    end
end