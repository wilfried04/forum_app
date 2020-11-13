# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.new({ :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'}).save
newuser = User.new({ :email => 'admin@example.com', 
    :password => 'password', 
    :password_confirmation => 'password'})
#newuser.skip_confirmation!
newuser.save