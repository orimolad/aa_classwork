# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
User.destroy_all

User.new("KushyJ")
User.new("thejewcrew4577")

