class CreateProjectMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :project_memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true
      t.timestamps
    end
  end
end
