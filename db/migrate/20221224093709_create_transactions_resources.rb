class CreateTransactionsResources < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions_resources do |t|
      t.references :resource, null: false, foreign_key: true
      t.references :transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
