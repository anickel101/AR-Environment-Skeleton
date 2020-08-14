class CreateGradeLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :grade_levels do |t|
      t.belongs_to :student
      t.belongs_to :teacher
    end
  end
end
