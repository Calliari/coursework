require_relative "./main.rb"


response = menu

 while response != 'q'
  case response
    when 'a'
      list_of_airport
    when 't'
      terminal_list
    when 'f'
      flights_list
    when 'p'
      passanger_list
    end
gets
  response = menu
 end
 ###########################################################
