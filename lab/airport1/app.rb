
require "pry" #

require_relative "./airport.rb"
require_relative "./terminal.rb"
require_relative "./flight.rb"
require_relative "./passenger.rb"
require_relative './data.rb'

airports = Data.get_data # calling the data file with the static function


############################ MENU #################################

 # def menu
 #  puts `clear`
 #  puts "* * * * * * Welcome to England Airport System! * * * * * * *".center 50
 #   arrayMenu = [ "[ A ] - list of airports", "[ T ] - list of terminals" ,"[ F ] - list of flights", "[ P ] - list of Passangers", "[ Q ] - quit" ]
 #   puts arrayMenu
 #
 #  gets.chomp.downcase
 # end


############################ Starta the app #################################
puts `clear`
  puts "* * * * * * Welcome to England Airport System! * * * * * * *".center 50
puts "****** Choose an airport *****".center 37
puts " \nAirport name | Country".center 50


  airports.each_with_index do |airport, index|
     puts "[ #{index} ] | #{airport.name} | #{airport.country}"
  end


########################### function  choose the terminal ##################################

  puts ""
  airport_index = gets.chomp.to_i
  puts `clear`
  puts "****** Choose a terminal to view flights *****".center 37


  puts " \nTerminal name | Terminal Capacity".center 50
  current_airport = airports[airport_index]
  current_airport.terminals.each_with_index do |terminal, index|
    puts "[ #{index} ] #{terminal.name} | #{terminal.capacity}"
  end

########################### function choose the flight ##################################

  puts ""
  terminal_index = gets.chomp.to_i
  puts `clear`
  puts "****** Choose a flight to view passengers list **** ".center 60
  puts " \nAirline comp | flying from | flying to".center 50

  current_airport.terminals[terminal_index].flights.each_with_index do |flight, index|
    puts "[ #{index} ] #{flight.flight_airline} | #{flight.flight_from} --> #{flight.flight_to}"
  end


############################## function view a list Passangers for a flight ###############################

  puts ""
  flight_index = gets.chomp.to_i
  puts `clear`
  puts "****** Passengers list of the flight****** ".center 37
  puts " \nFirst name | Lastname | DOB ".center 50

# binding.pry
  current_airport.terminals[terminal_index].flights[flight_index].passengers.each_with_index do |passenger, index|
    puts "[ #{index} ] #{passenger.first_name} | #{passenger.last_name} | #{passenger.dob}"
  end
  puts ""




############################## function Menu ###############################
# response = menu
#
# while response != "q"
#   case response
#   when "a"
#     airport
#   when "t"
#     terminal
#   when "f"
#     flight
#   when "p"
#     passenger
#   end
#   response = menu
# end
