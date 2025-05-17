class User < ApplicationRecord
  validates :name, :date_of_birth, :email, :phone_number, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }


  validates :email, uniqueness: true
end
