class Bid < ApplicationRecord
  belongs_to :model
  belongs_to :item
end
