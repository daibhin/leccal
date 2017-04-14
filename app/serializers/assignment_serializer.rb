class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :due_date, :course_id, :submissions

  def submissions
    object.submissions.where(submitter_id: current_user.id)
  end
end
