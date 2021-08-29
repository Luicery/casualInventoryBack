class Location < ApplicationRecord
  belongs_to :company
  has_many :items, dependent: :destroy
end
