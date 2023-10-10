class Child < ApplicationRecord
  belongs_to :user 
  has_many :milestones
  has_many :photos
end
