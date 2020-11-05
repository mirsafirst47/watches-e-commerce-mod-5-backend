class UserSerializer < ActiveModel::Serializer

    attributes :id, :username, :current_order, :past_orders

    # has_many :carts
    
end