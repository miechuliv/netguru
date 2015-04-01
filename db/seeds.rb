# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!( firstname: 'Roboute',  lastname: 'Guillirnan', email: 'ultramarines@imperium.com', password: 'superpassword', role: 'admin' )

User.create!( firstname: 'Leman',  lastname: 'Russ', email: 'spacewolves@imperium.com', password: 'superpassword', role: 'user' )
User.create!( firstname: 'Horus',  lastname: 'traitor', email: 'sonsofhorus@imperium.com', password: 'superpassword', role: 'user' )
User.create!( firstname: 'Rogal',  lastname: 'Dorn', email: 'imperialfists@imperium.com', password: 'superpassword', role: 'user' )
User.create!( firstname: 'Lion',  lastname: 'Johnson', email: 'darkangels@imperium.com', password: 'superpassword', role: 'user' )
User.create!( firstname: 'Corvus',  lastname: 'Corax', email: 'ravenguard@imperium.com', password: 'superpassword', role: 'user' )

category = Category.create!( name: 'Weapons' )
product = Product.create!( title: 'Heavy bolter', description: 'Standard heavy bolter, rocked propelled ammunition',
                           price: 50.67, category: category, user: user )
Review.create!( rating: 5, user: user, product: product,
                  content: 'Fine weapon , kills aliens and demons alike' )
