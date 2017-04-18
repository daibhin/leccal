class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :due_date, :course_id, :submissions

  def submissions
    submissions = current_user.submissions.where(assignment: object)
    serialized = ActiveModelSerializers::SerializableResource.new(submissions).as_json
    serialized[:submissions]
  end
end
