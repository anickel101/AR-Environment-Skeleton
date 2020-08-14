class RemoveGradeLevelFromHomeworks < ActiveRecord::Migration[6.0]
  def change
    remove_column :homeworks, :grade_level_id, :integer
  end
end
