class DropPaymentMethods < ActiveRecord::Migration[7.0]
  def change
    drop_table :payment_methods, force: :cascade
  end
end
