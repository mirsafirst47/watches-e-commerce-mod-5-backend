class User < ApplicationRecord

    has_secure_password
    after_create :set_current_cart

    has_many :carts

    def current_order
        current_cart = self.carts.find_or_create_by(history: false)
        CartSerializer.new(current_cart)
    end


    def past_orders
        all_past_orders = self.carts.where(history: true)
        all_past_orders.map do |order|
            CartSerializer.new(order)
        end
    end

    private

    def set_current_cart
        self.carts.create
    end

end
