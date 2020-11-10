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

    # def index
    #     carts = Cart.all
    #     render json: carts
    # end

    # def show 
    #     cart = Cart.find(params[:id])
    #     render json: cart
    # end

    # def create
    #     cart = Cart.create(cart_params)
    #     render json: cart
    # end

    # def update
    #     cart = Cart.find(params[:id])
    #     cart.update(cart_params)
    #     render json: cart
    # end

    # def destroy 
    #     cart = Cart.find(params[:id])
    #     cart.destroy
    #     render json: cart
    # end

    # private

    # def cart_params
    #     params.permit(:user_id, :history)
    # end

end
