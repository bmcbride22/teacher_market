class RemovePaymentMethodsFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :transactions, :payment_method_id
  end
end
