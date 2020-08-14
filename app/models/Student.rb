require 'pry'

class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels

    #attrs are given via ActiveRecord

    #This is non-AR method
    def full_name
        full_name =  "#{self.first_name} #{self.last_name}"
    end

    #This is a user-defined method which uses an AR method "where"
    def self.all_in_grade(grade_level)

        self.all.select {|student| student.grades.include?(grade_level)}

        #not working
        #self.all.where("grades.include?(?)", grade_level)
        
        #From one-to-one
        #self.where("grade_level.grade = ?", grade_level)
    end

    def teachers
        self.grade_levels.map {|gl| gl.teacher}
    end

    def grades
        self.grade_levels.map {|gl| gl.grade}
    end

end