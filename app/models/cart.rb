class Cart < ApplicationRecord
  
  belongs_to :user
  
  has_many :transactions
  has_many :watches, through: :transactions

  def total
    self.watches.sum(:price)
  end

end
