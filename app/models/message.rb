class Message < ApplicationRecord
  belongs_to :ad
  belongs_to :sender, :class_name => :users
  belongs_to :receiver, :class_name => :users
end
