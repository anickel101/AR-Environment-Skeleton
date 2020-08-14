class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :students, through: :grade_levels

    #user-defined method that uses AR's auto-attr to check if YoE > 5
    def tenure
        self.years_of_experience > 5
    end

end