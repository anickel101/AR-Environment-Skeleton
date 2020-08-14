class RemoveGradeLevelAndTeacherFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :grade_level, :string
    remove_column :students, :teacher_id, :integer
  end
end
