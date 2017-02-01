class ForumSerializer < ActiveModel::Serializer
  attributes :id

  has_many :topics
  belongs_to :course
end
