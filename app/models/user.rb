class User < ApplicationRecord
  has_secure_password 
  validates :email, presence: true, uniqueness: true
  has_many :children
  has_many :favorites
  has_many :reminders
  has_many :contacts
  has_many :photos
end
