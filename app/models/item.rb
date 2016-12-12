class Item < ApplicationRecord
  belongs_to :model
  has_many :bids
end
