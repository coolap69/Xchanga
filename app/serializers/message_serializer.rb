class MessageSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :ad
  has_one :sender
  has_one :receiver
end
