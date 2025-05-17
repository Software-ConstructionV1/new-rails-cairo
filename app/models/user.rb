class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true,
                  format: { with: URI::MailTo::EMAIL_REGEXP, message: "is invalid" }

  validates :phone_number, format: {
                    with: /\A(010|011|012|015)\d{8}\z/,
                    message: "must be a valid Egyptian phone number"
                  }
end