# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pic1 = Picture.create({ img: 'image1.png', caption: 'First image'})
pic2 = Picture.create({ img: 'image2.png', caption: 'Second image'})
pic3 = Picture.create({ img: 'image3.png', caption: 'Third image'})
pic4 = Picture.create({ img: 'image4.png', caption: 'Fouth image'})

user = User.create({name:"Steve"})
user1 = User.create({name:"Sam"})

comm1 = Comment.create({ body: 'text'})
comm2 = Comment.create({ body: 'body text - Steve'})
comm3 = Comment.create({ body: 'body text - Sam'})
comm4 = Comment.create({ body: 'body text - Sam'})



user.pictures.push pic1
user.pictures.push pic2
user.comments.push comm1
user.comments.push comm2

user1.pictures.push pic3
user1.pictures.push pic4
user1.comments.push comm3
user1.comments.push comm4

comm1.picture = pic1
comm1.save
comm2.picture = pic2
comm2.save
comm3.picture = pic2
comm3.save
comm4.picture = pic3
comm4.save

# likes

user.liked.push pic1
user.liked.push pic2
user1.liked.push pic3
user1.liked.push pic1

# pic1.comm1
