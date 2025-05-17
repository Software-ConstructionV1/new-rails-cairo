class User < ApplicationRecord
  validates :name, :DOB, :phone_number, presence: true
  validates :email, presence: true, uniqueness: true, email: true
end