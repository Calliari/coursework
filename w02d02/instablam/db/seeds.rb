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

comm1 = Comment.create({ body: 'Comment1 - Steve'})
comm2 = Comment.create({ body: 'Comment2 - Steve'})
comm3 = Comment.create({ body: 'Comment1 - Sam'})
comm4 = Comment.create({ body: 'Comment2  - Sam'})



user.picture.push pic1
user.picture.push pic2
user.comment.push comm1
user.comment.push comm2

user1.picture.push pic3
user1.picture.push pic4
user1.comment.push comm3
user1.comment.push comm4

comm1.picture = pic1 
comm1.save

comm2.picture = pic2 
comm2.save

comm3.picture = pic3 
comm3.save

comm4.picture = pic4
comm4.save

# pic1.comm1






			############ SQL ########


# update comments set body = "testing" where id = 1;

			############ Add foreing keys ########

# rails generate migration AddUserRefToComments user:references
# rails generate migration AddPictureRefToComments picture:references

			############ Create ########

#rails generate migration CreateComments body:text


			############ Create Models with timeStamp ########

#rails generate model Comment body:string picture:references



			############ Joints ########

rails g migration CreateJoinTableCustomerProduct customer product