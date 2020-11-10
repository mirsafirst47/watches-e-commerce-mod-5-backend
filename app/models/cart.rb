class Cart < ApplicationRecord
  
  belongs_to :user
  
  has_many :transactions
  has_many :watches, through: :transactions

  def total
    self.watches.sum(:price)
  end

  def timestamp
    self.created_at.strftime("%m/%d/%Y")
  end

end
