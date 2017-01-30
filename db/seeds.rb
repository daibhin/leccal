# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

# Lecturer.create(name: 'John Breslin', email: 'johnbreslin@nuigalway.ie')
# Lecturer.create(name: 'Martin Glavin', email: 'martinglavin@nuigalway.ie')
# Lecturer.create(name: 'Eddie Jones', email: 'edwardjones@nuigalway.ie')

programming_course = Course.create(name: 'Programming I', code: 'CS101')
Course.create(name: 'Programming II', code: 'CS201')

Assignment.create(name: 'MCQ', description: "Short quiz for all students", start_date: Time.now, due_date: (Time.now + 1.week), course_id: programming_course.id)
Assignment.create(name: 'MCQ 2', description: "Short quiz for all students", start_date: (Time.now + 2.days), due_date: (Time.now + 1.week), course_id: programming_course.id)
Assignment.create(name: 'MCQ 3', description: "Short quiz for all students", start_date: (Time.now + 3.days), due_date: (Time.now + 1.week), course_id: programming_course.id)
