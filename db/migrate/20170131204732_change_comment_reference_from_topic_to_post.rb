class ChangeCommentReferenceFromTopicToPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :topic_id
    add_column :comments, :post_id, :integer
  end
end
