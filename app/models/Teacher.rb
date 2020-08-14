require 'pry'

class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :homeworks
    has_many :students, through: :grade_levels
    #has_many :students, through: :homeworks

    #user-defined method that uses AR's auto-attr to check if YoE > 5
    def tenure
        self.years_of_experience > 5
    end

    def assign_homework(assign_name)

        self.students.each do |st| 
            Homework.create(name: assign_name, teacher_id: self.id, student_id: st.id)
        end

    end

end