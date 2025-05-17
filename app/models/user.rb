class User < ApplicationRecord
  # b.1 Validate presence
    validates :name, :date_of_birth, :email, :phone_number, presence: true

  # b.2 Validate email structure
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { with: VALID_EMAIL_REGEX }
    validates :email, uniqueness: true
end

