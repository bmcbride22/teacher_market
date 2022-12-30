class DropTransactionsResources < ActiveRecord::Migration[7.0]
  def change
    drop_table :transactions_resources, if_exists: true
  end
end
