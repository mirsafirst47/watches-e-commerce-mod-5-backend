class Watch < ApplicationRecord
    has_many :transactions
    has_many :carts, through: :transactions
end
