class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.belongs_to :assignment, index: true
      t.integer :submitter_id
      t.timestamps
    end
  end
end
