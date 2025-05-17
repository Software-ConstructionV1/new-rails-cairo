class User < ApplicationRecord
  validates :name,:DOB,:email,:phone_number presence:true
  validates :DOB, 
  validates :email, uniqueness: true, email: true
end