# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create(name: 'john', dob: '01/02/1990', email: 'bornintheUSA@yahoo.com')
sarah = User.create(name: 'sarah', dob: '02/02/1990', email: 'bornintheUS@yahoo.com')
joe = User.create(name: 'joe', dob: '03/02/1990', email: 'borninthe@yahoo.com')
