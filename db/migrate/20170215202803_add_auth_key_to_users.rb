class AddAuthKeyToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :authentication_token, :string, null: false, default: ""
  end
end
