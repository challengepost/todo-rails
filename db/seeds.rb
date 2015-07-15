# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  { email: 'matthew@exmple.com', password: 'password', password_confirmation: 'password' },
  { email: 'robin@exmple.com', password: 'password', password_confirmation: 'password' },
  { email: 'ross@exmple.com', password: 'password', password_confirmation: 'password' },
]

users.each do |attrs|
  user = User.find_or_create_by(email: attrs[:email]) do |u|
    u.attributes = attrs
  end

  user.save
end

todos = [
  { title: "Build a todo app" },
  { title: "Write blog post" },
  { title: "Send email to boss" },
  { title: "Attend Ruby meetup" }
]

todos.each do |attrs|
  Todo.find_or_create_by(title: attrs[:title])
end
