class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :forum_id

  has_many :posts
  belongs_to :forum
end
