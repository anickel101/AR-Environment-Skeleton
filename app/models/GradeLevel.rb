class GradeLevel < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :student
    has_many :homeworks
end