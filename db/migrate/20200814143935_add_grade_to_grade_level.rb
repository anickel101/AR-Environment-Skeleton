class AddGradeToGradeLevel < ActiveRecord::Migration[6.0]
  def change
    add_column :grade_levels, :grade, :string
  end
end
