class AddAuthenticationTokenToLecturers < ActiveRecord::Migration
  def change
    add_column :lecturers, :authentication_token, :string
    add_index :lecturers, [:authentication_token], name: "index_users_on_authentication_token", using: :btree
  end
end
