class DropPaymentTypes < ActiveRecord::Migration[7.0]
  def change
    drop_table :payment_types
  end
end
