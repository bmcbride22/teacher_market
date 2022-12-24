class Transaction < ApplicationRecord
    belongs_to :user_id
    belongs_to :payment_type_id
            
end
