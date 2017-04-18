class CreateSubmissionMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :submission_memberships do |t|
      t.integer :submission_id
      t.integer :user_id

      t.timestamps
    end
  end
end
