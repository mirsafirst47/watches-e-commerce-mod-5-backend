class CartsController < ApplicationController

    before_action :authorized

    def transform
        current_order = @user.carts.find(params[:id])
        current_order.update(history: true)
        new_order = @user.carts.create(history: false)
        render json: {
            current_order: CartSerializer.new(new_order),
            transformed_order: CartSerializer.new(current_order)
        }
    end

end
