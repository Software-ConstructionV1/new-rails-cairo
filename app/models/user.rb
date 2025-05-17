class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, message: "is not a valid email" }
    validates :dob, presence: true
    validates :phone_number, presence: true, uniqueness: true

end
