class Photo < ApplicationRecord
  belongs_to :milestone
  belongs_to :child
  belongs_to :user
end
