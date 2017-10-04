# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :messages, through: :ads, dependent: :destroy
  has_many :ads, dependent: :destroy
end
