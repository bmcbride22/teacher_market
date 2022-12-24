class AddAssociationsToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :payment_type, null: false, foreign_key: true
    add_reference :users, :subject, null: false, foreign_key: true
    add_column :users, :grade_level, :integer
  end
end
