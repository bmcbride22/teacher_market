class CreatePaymentMethods < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_methods do |t|
      t.references :user, null: false, foreign_key: true
      t.references :payment_type, null: false, foreign_key: true
      t.text :billing_address
      t.string :card_number

      t.timestamps
    end
  end
end
