class Forum < ApplicationRecord
  has_many :topics
  belongs_to :course
end
