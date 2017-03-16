require "./operation.rb"

puts "Please type what operation to use:"
operation_array = ["[ A ] - Additon", "[ M ] - Multiplication", "[ D ] - Division", "[ S ] - Subtraction", "[ X ] - Quit"]
puts ""
puts operation_array

puts ""
puts "Choose the operation typing the initials as it shows:"
operation = gets.chomp

operation.upcase!

case operation
when "A"
  puts operation_array[0]
    puts "-----------------------------"
  puts "Enter your first number"
    num1 = gets.chomp
  puts "Enter your second number"
    num2 = gets.chomp
addition num1, num2

when "M"
  puts operation_array[1]
    puts "-----------------------------"
  puts "Enter your first number"
    num1 = gets.chomp
  puts "Enter your second number"
    num2 = gets.chomp
multiplication num1, num2

when "D"
  puts operation_array[2]
    puts "-----------------------------"
  puts "Enter your first number"
    num1 = gets.chomp
  puts "Enter your second number"
    num2 = gets.chomp
division num1, num2

when "S"
  puts operation_array[3]
    puts "-----------------------------"
  puts "Enter your first number"
    num1 = gets.chomp
  puts "Enter your second number"
    num2 = gets.chomp
subtraction num1, num2

when "X"
  puts "QUIT Calculator"
    puts "-----------------------------"
  require "./quit.rb"

else
  puts "No valid input! ERROR"
  require "./basic.rb"
end
puts ""
