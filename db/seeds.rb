# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Pub.create!(name: 'The Star & Anchor', google_id: '1f07a31e2c7f15f4ae758b1906bf7069dec36229')
p2 = Pub.create!(name: 'Black George', google_id: '46f07dfc593c570e3716e8620b5367fbe9c6544e')

b1 = Beer.create!(name: 'Hoodoo', percentage: 4, brewery: 'Uinta Brewing Company', photo: 'http://www.uintabrewing.com/images/lightbox_brew_photos/Hoodoo-6-pack.png', category: 'Lager')

b2 = Beer.create!(name: 'Faceless Spreadsheet Ninja', percentage: 5.8, brewery: 'Weird Beard', photo: 'http://www.beerhawk.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/h/bh772.jpg', category: 'Pilsner')

b3 = Beer.create!(name: 'Carling', percentage: 1.2, brewery: 'Carling', photo: 'http://ecx.images-amazon.com/images/I/31A4sKFkWKL.jpg', category: 'Lager')

u1 = User.create!(name: 'Chris', password: 'ChrisChris', password_confirmation: 'ChrisChris', email: 'chris@chris.com', photo: 'http://mediad.publicbroadcasting.net/p/kajx/files/201407/A_bull_moose_animal_mammal.jpg', location: 'Ealing, London', gender: 'm')
u2 = User.create!(name: 'Caroline', password: 'Caroline', password_confirmation: 'Caroline', email: 'lineybenn@gmail.com', photo: 'https://sardinereport.files.wordpress.com/2012/06/moosedm2003_468x440.jpg', location: 'The Moon', gender: 'f')

Review.create(user: u1, beer: b1, pub: p1, rating: 4, body: 'Fizzy and delicious!')
Review.create(user: u2, beer: b1, pub: p1, rating: 5, body: 'The best beer in the world...')

Review.create(user: u2, beer: b2, pub: p1, rating: 0, body: 'Bloody awful. Avoid.')

Review.create(user: u2, beer: b3, pub: p2, rating: 1, body: 'Good for washing down prescription meds')




