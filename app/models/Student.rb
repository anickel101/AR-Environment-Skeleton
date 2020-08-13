class Student < ActiveRecord::Base

    #attrs are given via ActiveRecord

    #This is non-AR method
    def full_name
        full_name =  "#{self.first_name} #{self.last_name}"
    end

    def self.all_in_grade(grade_level)
        self.where("grade_level = ?", grade_level)
    end

end