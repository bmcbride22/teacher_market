class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :payment_method, null: false, foreign_key: true

      t.timestamps
    end
  end
end
