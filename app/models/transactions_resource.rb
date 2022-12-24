# == Schema Information
#
# Table name: transactions_resources
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  resource_id    :bigint           not null
#  transaction_id :bigint           not null
#
# Indexes
#
#  index_transactions_resources_on_resource_id     (resource_id)
#  index_transactions_resources_on_transaction_id  (transaction_id)
#
# Foreign Keys
#
#  fk_rails_...  (resource_id => resources.id)
#  fk_rails_...  (transaction_id => transactions.id)
#
class TransactionsResource < ApplicationRecord
    belongs_to :resource
    belongs_to :transaction
            
end
