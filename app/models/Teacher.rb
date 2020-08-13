class Teacher < ActiveRecord::Base

    def tenure
        self.years_of_experience > 5
    end

end