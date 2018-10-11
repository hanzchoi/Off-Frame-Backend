# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# example
Note.create(name: 'Shoe lala',
  price: 99.99,
  image: 'https://res.cloudinary.com/dbgp0ijfb/image/upload/v1539268369/off-frame-studio/052448134.jpg',
  category: 'pants',
  size: 'One size',
  description: 'balah')

# t.string :name
# t.float :price
# t.string :category
# t.text :size
# t.string :description
