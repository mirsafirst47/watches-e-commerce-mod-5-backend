class TransactionSerializer < ActiveModel::Serializer
    attributes :id, :watch_name, :watch_price #, :watch_image
    # belongs_to :watch
end