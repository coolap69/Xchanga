# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :lastname, :city, :zip, :phone
end
