class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :post

  belongs_to :user

  def post
    object.post_id
  end
end
