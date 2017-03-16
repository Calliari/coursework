require "./operation.rb"
puts "*** Trip Calculator ***".center 50

#distance, cost per gallon, fuel efficiency (mpg),  speed

puts "Please input - 'trip distance in miles' "
 dis = gets.chomp

# puts "Please input - 'cost per gallon' "
#  cpg = gets.chomp
#
# puts "Please input - 'fuel efficiency (mpg)' "
#  mpg = gets.chomp

puts "Please input - speed in miles"
 speed = gets.chomp



# call the function trip calc in operation.rb
#dis cpg mpg speed
trip dis, speed
