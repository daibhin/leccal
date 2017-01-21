module Calendar
  module CalendarEvents
    class Get < Mutations::Command

      required do
        integer :course_id
        integer :lecturer_id
      end

      def execute
        assignment_counts = Hash.new(0)

        course.students.each do |student|
          student.courses.each do |course|
            course.upcoming_assignments.each do |assignment|
              assignment_counts[assignment] += 1
            end
          end
        end

        calendar_events = assignment_counts.map do |assignment|
          CalendarEventSerializer.new(assignment, root: false).as_json
        end

        { calendar:
          {
            id: "#{lecturer.id}#{course.id}",
            calendar_events: calendar_events
          }
        }
      end

      def course
        @course ||= Course.find(course_id)
      end

      def lecturer
        @lecturer ||= Lecturer.find(lecturer_id)
      end
    end
  end
end
