class AdSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :quantity
  has_one :user
end
