class CreateSubjets < ActiveRecord::Migration[7.0]
  def change
    create_table :subjets do |t|
      t.string :title
      t.integer :id

      t.timestamps
    end
  end
end
