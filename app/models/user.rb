class User < ApplicationRecord
  has_secure_password 
  validates :email, presence: true, uniquiness: true
  has_many :children
  # has_many :reminders
end
