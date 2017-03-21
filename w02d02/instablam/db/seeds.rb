# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Picture.create({ img: 'image1.png', caption: 'First image'})
Picture.create({ img: 'image2.png', caption: 'Second image'})
Picture.create({ img: 'image3.png', caption: 'Third image'})
Picture.create({ img: 'image4.png', caption: 'Fouth image'})
Picture.create({ img: 'image5.png', caption: 'Fifth image'})

# pic1 = Picture.create({ img: 'image1.png', caption: 'First image'})
# pic2 = Picture.create({ img: 'image2.png', caption: 'Second image'})
# pic3 = Picture.create({ img: 'image3.png', caption: 'Third image'})
# pic4 = Picture.create({ img: 'image4.png', caption: 'Fouth image'})
# pic5 = Picture.create({ img: 'image5.png', caption: 'Fifth image'})


# user = User.create({name: "Steve"})

# user.picture.push pic1
# user.picture.push pic2
# user.picture.push pic3
# user.picture.push pic4
# user.picture.push pic5