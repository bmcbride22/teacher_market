# == Schema Information
#
# Table name: payment_methods
#
#  id              :bigint           not null, primary key
#  billing_address :text
#  card_number     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  payment_type_id :bigint           not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_payment_methods_on_payment_type_id  (payment_type_id)
#  index_payment_methods_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (payment_type_id => payment_types.id)
#  fk_rails_...  (user_id => users.id)
#
class PaymentMethod < ApplicationRecord
  belongs_to :user
  belongs_to :payment_type
  has_many :transactions
end
