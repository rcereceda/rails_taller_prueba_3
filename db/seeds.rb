# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Catalog.destroy_all
User.destroy_all
Pokemon.destroy_all
Report.destroy_all

# 10.times do
# 	Catalog.create(name: Faker::Pokemon.name, description: Faker::Lorem.sentence)
# end

users = User.create([{ email: 'rcereced@gmail.com', name: 'trainer1', password: '123456' }, { email: 'rodrigo@desafiolatam.com', name: 'admin', password: '123456' }])

catalogs = Catalog.create([{ name: 'Ratata', description: 'Mouse Pokemon' }, { name: 'Caterpie', description: 'Worm Pokemon'}])

Pokemon.create([{ user: users.first, catalog: catalogs.first, level: 10 }, { user: users.first, catalog: catalogs.first, level: 12 }, { user: users.first, catalog: catalogs.second, level: 5 }])