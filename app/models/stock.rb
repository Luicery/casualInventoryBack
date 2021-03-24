class Stock < ApplicationRecord
  belongs_to :location
  has_many :items, dependent: :destroy
end