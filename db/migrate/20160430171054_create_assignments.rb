class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :due_date
      t.references :course

      t.timestamps null: false
    end
  end
end
