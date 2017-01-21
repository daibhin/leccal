class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :due_date, :course_id
end
