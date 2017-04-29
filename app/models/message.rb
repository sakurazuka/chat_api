class Message < ApplicationRecord
  has_many :reactions, dependent: :destroy
end
