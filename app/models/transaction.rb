class Transaction < ApplicationRecord
  belongs_to :cart
  belongs_to :watch
end
