class DropSubjects < ActiveRecord::Migration[7.0]
  def change
    drop_table :subjects
  end
end
