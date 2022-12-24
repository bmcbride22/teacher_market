class RemovePaymentTypeFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :payment_type_id
  end
end
