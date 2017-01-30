class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.references :forum
      t.timestamps
    end
  end
end
