class Transaction < ApplicationRecord
  
  belongs_to :cart
  belongs_to :watch

  def watch_name
    self.watch.name
  end

  def watch_price
    self.watch.price
  end

end
