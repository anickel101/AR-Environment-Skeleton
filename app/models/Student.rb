class Student < ActiveRecord::Base
    belongs_to :teacher

    #attrs are given via ActiveRecord

    #This is non-AR method
    def full_name
        full_name =  "#{self.first_name} #{self.last_name}"
    end

    #This is a user-defined method which uses an AR method "where"
    def self.all_in_grade(grade_level)
        self.where("grade_level = ?", grade_level)
    end

end