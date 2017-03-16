# basic if statements
puts "1------------ basic if statements --------------"
if 5 < 10
end
puts ""

# one liner (if on the same line use the "then" keyword)
puts "2------------ if on liner -------------"
if 6 < 10 then puts "6 is also less than 10" end
puts ""

# if else statements
puts "3------------ if else statements ------------"
if 10 < 6
    puts "It's not true so this wont't run"
  else
    puts "Nope 10 is not less then 6"
  end
puts ""

# if else one linner
puts "4------------ if else one linner ------------"
if 10 < 7 then "False, 10 is not less than 6" else puts "Nah 10 is really not less than 7" end
puts ""

# else if
puts "5------------ else if ------------"
if 50 > 5
puts "50 is greater than 5"
elsif 10 < 20
puts "10 is less than 20"
else
  puts "Neither of those things were true"
end
puts ""

# unless
puts "6------------ Unless ---------"
my_variable = 5
unless my_variable > 10
  puts "my variable is not greater than 10"
end
puts ""

# unless one liner
puts "7------------ Unless one liner---------"
unless my_variable > 20 then puts "it is not" end
puts ""

# ternary
puts "8------------ ternary---------"
my_boolean = true
puts my_boolean ? "it's True" : "its False"
puts ""

# comparissons "spaceship"
puts "9------------comparissons (spaceship)------------"
# if a less than b ""-1"
# if a greater than b "1"
# if a equals b "0"
a = 10
b = 20

puts a <=> b
puts ""


# Truthy / Falsey
# the only two thing are Falsey in Ruby [nil, false]
puts "10-------------Truthy / Falsey -------------"
my_array = []

if my_array
  puts "my array exists"
end

if  my_array.length
  puts "This doesnt't mean there is anything in the array"
end
puts ""

# More specific comparissons
puts "11------------- specific comparissons-------------"
my_second_array = [1,2,3,4]
another_array = [1,2,3,4]
my_ducplicated_array = my_second_array

if my_second_array.eql? another_array
  puts "these are eql"
end

if my_second_array.equal? my_ducplicated_array
  puts "these are equal"
end
puts ""

# short circuiting
puts "12----------- short circuiting -------------"
if true || 5 < 10

  puts "One of these eas true"
end
puts ""

# Real word example
puts "13----------- Real word example -------------"
def log_startup_attempts
  # increase the log counter
  # return the number attempts
end
new_machines_blocked = true

if new_machines_blocked || log_startup_attempts > 10
  puts "you cannot start any more machines"
# because of short circuiting the log_startup_attempts would not run even though we want it to
end
puts ""

 # short circuit with and
 # short start from the other and and look for falses
puts "14----------- Real word example -------------"
 # if log_startup_attempts > 10 && new_machines_blocked
 #   puts "You REALLY cant't start any more machines"
 # end
 puts ""

 # case (switch)
 puts "15----------- Switch example -------------"
 grade  = "A"

 case grade
 when "A"
   puts "Well done!"
 when "B"
   puts "try harder"
 when "C"
   puts "You need help!!!"
 else
   puts "You just making it up!"
 end
puts ""

#
