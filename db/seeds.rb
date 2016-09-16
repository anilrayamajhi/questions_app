# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{username: "gane1", email:"ganey1@email.com"}, {username: "gane2", email:"ganey2@email.com"}])


questions = Question.create([{title: "What is this?", body: "This is this", user_id: 1}, {title: "What is this?", body: "This is this", user_id: 1}])
