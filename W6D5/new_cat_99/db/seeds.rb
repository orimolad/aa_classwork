# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
cat1 = Cat.create!(birth_date: '2002/01/20', color: 'brown', name: 'brownie', sex: 'F', description: 'playful like a dog')

cat2 = Cat.create!(birth_date: '2015/03/10', color: 'black', name: 'blacky', sex: 'F', description: 'hates people')

cat3 = Cat.create!(birth_date: '2012/02/06', color: 'blue', name: 'bluey', sex: 'F', description: 'eats to much')


