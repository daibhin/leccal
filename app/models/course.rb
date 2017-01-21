class Course < ActiveRecord::Base
  has_many :assignments
  has_many :enrollments
  has_many :students, through: :enrollments

  def upcoming_assignments
    assignments.where("due_date > ?", Time.now)
  end
end
