class User < ApplicationRecord
    validates :name, :email, :date_of_birth, :phone_number, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "is invalid" }
    validates :email, presence: true, uniqueness: true
end
