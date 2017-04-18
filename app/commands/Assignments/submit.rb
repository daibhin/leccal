module Assignments
  class Submit < Mutations::Command

    required do
      integer :assignment_id
      integer :user_id
    end

    optional do
      array :member_ids, class: String
    end

    def validate
      add_error(:submission_error, :too_late, "The assignment deadline has passed") if assignment.due_date < Time.now
    end

    def execute
      ActiveRecord::Base.transaction do
        submission = assignment.submissions.create!(submitter_id: user_id)
        submission.users << group_members
      end
    end

    def assignment
      @assignment ||= Assignment.find(assignment_id)
    end

    def group_members
      @group_members ||= User.find(member_ids.uniq)
    end
  end
end
