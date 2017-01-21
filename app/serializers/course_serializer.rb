class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :code
  has_many :assignments
end
