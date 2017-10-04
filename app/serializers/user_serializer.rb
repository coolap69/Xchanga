# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :city, :zip, :phone
end
