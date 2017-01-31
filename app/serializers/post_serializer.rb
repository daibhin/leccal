class PostSerializer < ActiveModel::Serializer
  attributes :name
  has_many :comments
end
