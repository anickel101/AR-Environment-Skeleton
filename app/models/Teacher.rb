require 'pry'

class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :homeworks, through: :grade_levels
    has_many :students, through: :grade_levels

    #user-defined method that uses AR's auto-attr to check if YoE > 5
    def tenure
        self.years_of_experience > 5
    end

    # def grade_level_ids
    #     GradeLevel.where("teacher = ?", self).map {|gl| gl.id}
    # end

    def assign_homework(assign_name)
        self.students.each do |student| 
            gl = GradeLevel.all.where("teacher_id = ? AND student_id = ?", self.id, student.id).first
            Homework.create(name: assign_name, grade_level: gl)
        end
    end

end