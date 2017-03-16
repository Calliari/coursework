puts ""
puts "****** Calculator *****".center 50
puts ""
puts "Which calculator do want to use?"
calculator = [ "[ Ba ] - Basic", "[ Ad ] - Advanced", "[ B ] - BMI Calculator", "[ T ] - Trip Calculator", "[ X ] - Quit" ]
#puts "calculator: #{calculator}"
puts calculator

puts ""

calc = gets.chomp
calc.upcase!

case calc
when "BA"
  puts "#{calculator[0]} calculator"
    puts "-----------------------------"
  require "./basic.rb"

when "AD"
  puts "#{calculator[1]} calculator"
    puts "-----------------------------"
  require "./advanced.rb"

when "B"
  puts "#{calculator[2]} calculator"
    puts "-----------------------------"
  require "./bmiCalc.rb"

when "T"
  puts "#{calculator[3]} calculator"
    puts "-----------------------------"
  require "./tripCalc.rb"

when "X"
  puts "QUIT Calculator"
    puts "-----------------------------"
  require "./quit.rb"

else
  puts `clear`
  puts "ERROR,  it must be 'Ba' or 'Ad' only!"
  require "./calc.rb"

end


# waiting in the terminal response

response = menu

while response != "q"
  case response
  when "b"
    basic_calc
  when "a"
    advanced_calc
  end

  response = menu
end

# waiting in the terminal menu function
