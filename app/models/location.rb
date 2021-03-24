class Location < ApplicationRecord
  belongs_to :company
  has_one :stock, dependent: :destroy
end
