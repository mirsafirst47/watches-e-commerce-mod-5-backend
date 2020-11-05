class CartSerializer < ActiveModel::Serializer

    attributes :id, :history, :total

    has_many :transactions
    
end