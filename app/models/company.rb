class Company < ApplicationRecord
  has_many :locations, dependent: :delete_all
  validates :email, presence: true, uniqueness: true
  has_secure_password validations:false
end
