class AddTeacherGradeLevelColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :grade_level, :string
  end
end
