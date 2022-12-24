class TransactionsResource < ApplicationRecord
    belongs_to :resource
    belongs_to :transaction
            
end
