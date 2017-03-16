
# function for addition +
def addition num1, num2
   total = num1.to_i + num2.to_i
   puts "--> The total is... #{total}"
end

# function for Subtraction -
def subtraction num1, num2
   total = num1.to_i - num2.to_i
   puts "--> The total is... #{total}"
end

# function for Multiplication *
def multiplication num1, num2
   total = num1.to_i * num2.to_i
   puts "--> The total is...  #{total}"
end

# function for Division /
def division num1, num2
   total = num1.to_i / num2.to_i
   puts "--> The total is...  #{total}"
end

# function for power **
def power num1, num2
   total = num1.to_i ** num2.to_i
   puts "--> The total is...  #{total}"
end

# function for Square Root // **
def squareRoot num1
  total = Math.sqrt(num1.to_i)
  puts "--> The total is...  #{total}"
end

# function BMI = ( weight / (METERS * METERS) ) or BMI = (weight / (height in cm * height in cm)) * 10 000
def bmi weight , height
  total = (weight.to_f /  (height.to_f ** 2)) * 10000

   puts "--> Your BMI is...  #{total}"
end

#### Trip Calculator
#distance, cost per gallon, fuel efficiency (mpg),  speed
def trip dis, speed

  if speed.to_i <= 60
     time = dis.to_i * speed.to_i / 60
     cost = dis.to_i / 
  end


  puts "--> Your trip will take... #{time}" #hours and cost #{cost}"
end
