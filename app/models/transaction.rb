# == Schema Information
#
# Table name: transactions
#
#  id                :bigint           not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  payment_method_id :bigint           not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_transactions_on_payment_method_id  (payment_method_id)
#  index_transactions_on_user_id            (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (payment_method_id => payment_methods.id)
#  fk_rails_...  (user_id => users.id)
#
class Transaction < ApplicationRecord
    belongs_to :user_id
    belongs_to :payment_type_id
            
end
