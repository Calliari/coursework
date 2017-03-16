require "./operation.rb"

operation_array = ["[ P ] - Power", "[ S ] - Square root", "[ X ] - Quit"]
puts ""
puts operation_array

puts ""
puts "Choose the operation typing the initials as it shows"
operation = gets.chomp

operation.upcase!

case operation
when "P"
  puts operation_array[4]
    puts "-----------------------------"
  puts "Enter your first number"
    num1 = gets.chomp
  puts "Enter your second number"
    num2 = gets.chomp
Power num1, num2

when "S"
  puts operation_array[5]
    puts "-----------------------------"
  puts "Enter number for Square Root"
    num1 = gets.chomp
SquareRoot num1

when "X"
  puts "QUIT Calculator"
    puts "-----------------------------"
  require "./quit.rb"

else
  puts "No valid input! ERROR"
  require "./advanced.rb"

end
puts ""
