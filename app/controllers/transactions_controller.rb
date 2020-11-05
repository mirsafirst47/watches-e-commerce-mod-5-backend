class TransactionsController < ApplicationController

    def create
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end

    private

    def transaction_params
        params.permit(:cart_id, :watch_id)
    end 
end
