class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :assignment_id, :submitter_id, :members

  def members
    object.submission_memberships.map { |m| m.user.id }
  end
end
