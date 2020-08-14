require 'pry'

class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :homeworks
    has_many :teachers, through: :grade_levels
    #has_many :teachers, through: :homeworks

    #attrs are given via ActiveRecord

    #This is non-AR method
    def full_name
        full_name =  "#{self.first_name} #{self.last_name}"
    end

    #This is a user-defined method which uses an AR method "where"
    def self.all_in_grade(grade_level)
        GradeLevel.all.where("grade = ?", grade_level).map {|gl| gl.student}
    end

    #homeworks should return all homeworks connected to this student (via AR)
    
    def complete_homework
        self.homeworks.where("status = ?", "incomplete").each {|hw| hw.update(status: "completed")}
    end

end