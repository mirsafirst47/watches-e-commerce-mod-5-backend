class TransactionsController < ApplicationController

    def create
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end

    def destroy
        # byebug
        transaction = Transaction.find(params[:id])
        transaction.destroy

        render json: transaction
    end

    private

    def transaction_params
        params.permit(:watch_id, :cart_id)
    end 

end
