class ChangeAssignmentDateToDateTime < ActiveRecord::Migration[5.0]
  def change
    change_column :assignments, :due_date, :datetime
    change_column :assignments, :start_date, :datetime
  end
end
