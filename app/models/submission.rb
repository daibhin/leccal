class Submission < ApplicationRecord
  has_many :users, through: :submission_memberships
  has_many :submission_memberships

  belongs_to :assignment
end
