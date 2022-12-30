class AddResourceToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :resource, null: false, foreign_key: true
  end
end
