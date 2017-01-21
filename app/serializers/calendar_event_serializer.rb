class CalendarEventSerializer < ActiveModel::Serializer
  has_one :assignment
  attributes :student_count

  def assignment
    object[0]
  end

  def student_count
    object[1]
  end
end
