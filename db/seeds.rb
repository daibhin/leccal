# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

# Lecturer.create(name: 'John Breslin', email: 'johnbreslin@nuigalway.ie')
# Lecturer.create(name: 'Martin Glavin', email: 'martinglavin@nuigalway.ie')
# Lecturer.create(name: 'Eddie Jones', email: 'edwardjones@nuigalway.ie')
user = User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')

programming_course = Course.create(name: 'Programming I', code: 'CS101')
Course.create(name: 'Programming II', code: 'CS201')

Assignment.create(name: 'MCQ', description: "Short quiz for all students", start_date: Time.now, due_date: (Time.now + 1.week), course_id: programming_course.id)
Assignment.create(name: 'MCQ 2', description: "Short quiz for all students", start_date: (Time.now + 2.days), due_date: (Time.now + 1.week), course_id: programming_course.id)
Assignment.create(name: 'MCQ 3', description: "Short quiz for all students", start_date: (Time.now + 3.days), due_date: (Time.now + 1.week), course_id: programming_course.id)

# Discussions
forum = Forum.create(course_id: programming_course.id)
topic = Topic.create(name: "Assignment 1 - Discussion", description: "Ask questions about Assignment 1 on here", forum_id: forum.id)
post = Post.create(title: "this.attr or attr.this", topic_id: topic.id)
Comment.create(text: "How do I do this?", post_id: post.id, user_id: user.id)
Comment.create(text: "I'm not just going to give you the answer", post_id: post.id, user_id: user.id)

# Projects
project = Project.create(name: "My first project")
membership = ProjectMembership.create(user_id: user.id, project_id: project.id)
Todo.create(name: "Item 1", completed: false, project_id: project.id)
Todo.create(name: "Item 2", completed: false, project_id: project.id)
Todo.create(name: "Item 3", completed: false, project_id: project.id)
