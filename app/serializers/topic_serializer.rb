class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :forum_id

  has_many :posts
  belongs_to :forum
end
