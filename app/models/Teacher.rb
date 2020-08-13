class Teacher < ActiveRecord::Base
    has_many :students

    #user-defined method that uses AR's auto-attr to check if YoE > 5
    def tenure
        self.years_of_experience > 5
    end

end