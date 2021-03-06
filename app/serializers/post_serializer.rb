class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :topic_id

  has_many :comments
  belongs_to :topic
end
