class CreateHomework < ActiveRecord::Migration[6.0]
  def change
    create_table :homeworks do |t|
      t.belongs_to :grade_level
      t.string :status
    end
    change_column_default :homeworks, :status, "incomplete"
  end
end
