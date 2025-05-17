class User < ApplicationRecord

  validates :name , :dob , :email, :phone_number , presence:true 

  validates :email,format: {with: URI::MailTo::EMAIL_REGEXP,message:"must be a valid email address"}

  validates :email, uniqueness:true

end