require "./operation.rb"
puts "*** BMI Calculator ***".center 50

puts "Please input you boby weight in 'KG'"
 weight = gets.chomp

puts "Please input you boby height in 'Centimeters (cm)'"
height  = gets.chomp

# call the function bmi in operation.rb
bmi weight, height
