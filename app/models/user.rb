# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :messages, through: :ads
  has_many :ads
end
