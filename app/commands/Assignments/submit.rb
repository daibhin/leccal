module Assignments
  class Submit < Mutations::Command

    required do
      integer :assignment_id
      integer :user_id
    end

    def validate
      add_error(:submission_error, :too_late, "The assignment deadline has passed") if assignment.due_date < Time.now
    end

    def execute
      binding.pry
    end

    def assignment
      @assignment ||= Assignment.find(assignment_id)
    end
  end
end
