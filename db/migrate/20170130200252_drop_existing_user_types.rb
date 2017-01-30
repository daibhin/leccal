class DropExistingUserTypes < ActiveRecord::Migration[5.0]
  def up
    drop_table :lecturers
    drop_table :students
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
