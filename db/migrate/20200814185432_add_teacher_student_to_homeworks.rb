class AddTeacherStudentToHomeworks < ActiveRecord::Migration[6.0]
  def change
    add_column :homeworks, :teacher_id, :integer
    add_column :homeworks, :student_id, :integer
  end
end
