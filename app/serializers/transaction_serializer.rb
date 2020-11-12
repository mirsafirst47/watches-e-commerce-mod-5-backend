class TransactionSerializer < ActiveModel::Serializer
    attributes :id, :watch_name, :watch_price
end