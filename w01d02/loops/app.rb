puts " 1------- for loop -------"
# for loop arrange
#tripple ... include 0 --> 4  exclude the laste number 5
#double .. include 0 --> 5
for i in 0..5
  puts "index is #{i}"
end
puts ""

puts " 2------- for loop with arrays-------"
# for loop array
array_of_values = ["steve","bob","sparta"]

for name in array_of_values
  puts "names were : #{name}"
end
puts ""

puts " 3------- for loop with while-------"
# while loops
counter = 0

while counter <= 10
  puts "counter : #{counter}"
  counter+=1
end
puts ""

puts " 4------- for loop until-------"
# untils loop
until counter == 0
  puts "counter is now #{counter}"
  counter-=1
end
puts ""

puts " 5------- each -------"
# each method
array_of_values.each do |value|
  puts "I pulled these values out of the array : #{value}"
end
puts ""

puts " 6------- each with index and value-------"
# each method
array_of_values.each_with_index do |value, index|
  puts "Index: #{index} value: #{value}"
end
puts ""

# map
puts " 7------- each with map-------"
number_array = [1,2,3,4,5]

square_array = number_array.map do |value|
  value * value
end

puts square_array
puts ""

# map!
puts " 8------- each with map with !------"
puts ""


puts " 9------- each without Reduce ------"
# Reduce

sum_array = [1,2,4,7,20]

sum = 0

sum_array.each do |val|
  sum += val
end

puts "The sum is: sum #{sum}"
puts ""

puts " 10------- Reduce (aka inject)------"
# # aka injects
# sum_array = [1,2,4,7,20]
# total = sum_array.reduce do |sum, value|
#   sum + value
# end

sum_array = [1,2,4,7,20]
total = sum_array.reduce(:+)
puts ""

puts " 10------- Return the longest word------"
# find the longest word
words = ["Lexie","Steve","Bob","Oliver","Niall"]

# find the longest word
longest = words.reduce do |memo, word|
  memo.length > word.length ? memo : word
end
puts longest
