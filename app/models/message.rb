class Message < ApplicationRecord
  belongs_to :ad
  belongs_to :users
end
