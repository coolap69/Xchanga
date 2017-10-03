class MessageSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :ad
end
