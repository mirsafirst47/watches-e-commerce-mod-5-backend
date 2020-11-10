class CartSerializer < ActiveModel::Serializer

    attributes :id, :history, :total, :timestamp

    has_many :transactions
    
end