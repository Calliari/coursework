require_relative "./airport.rb"


puts "*** Airpot Name - Country - Terminal***".center 50

def menu
  puts `clear`
   puts "* Welcome to England Airport System! *".center 50
  arrayMenu = [ "[ A ] - list of airport", "[ T ] - list of terminal" ,"[ F ] - list of flights", "[ P ] - list of Passanger", "[ Q ] - quit" ]
  puts arrayMenu

  gets.chomp.downcase
end

###########################################################

def list_of_airport

  airports =  [
    (Airport.new "Heathrow", "England"),
    (Airport.new "Gatwick" , "England")
  ]

  puts ""
  puts "*** Choose the airport ***".center 50
  puts ""

  airports.each_with_index do |airport, index|
    puts "#{index}) #{airport.airport_name} #{airport.airport_country}"
  end
  puts ""

  response = gets.chomp.to_i
  case response
  when '0'
      terminal_list
    when 'f'
      flights_list
    when 'p'
      passanger_list
    end

end

###########################################################


def terminal_list

  airports[0].terminals = [
    Terminal.new("1", 1000),
    Terminal.new("2", 500),
    Terminal.new("3", 1000),
    Terminal.new("4", 500)
  ]

  puts ""
  puts "*** Choose the terminal ***".center 50
  puts ""

  airport_index = gets.chomp.to_i
  current_airport = airports[airport_index]

  current_airport.terminals.each_with_index do |terminal, index|
    puts "#{index}) #{terminal.terminal_name}"
  end
end
