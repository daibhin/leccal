module Calendar
  module CalendarEvents
    class Get < Mutations::Command

      required do
        integer :course_id
      end

      def execute
        assignment_counts = Hash.new(0)

        course.students.each do |student|
          student.courses.each do |course|
            course.upcoming_assignments.each do |assignment|
              assignment_counts[assignment.due_date] += 1
            end
          end
        end

        {
          calendar_events: assignment_counts
        }
      end

      def course
        @course ||= Course.find(course_id)
      end
    end
  end
end
