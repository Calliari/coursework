class Data
  def self.get_data # static function
    airports = [
      Airport.new("Gatwick", "England"),      # 0
      Airport.new("Heathrow" , "England"),    # 1
      Airport.new("Luton", "England"),        # 2
      Airport.new("Stansted" , "England") ,   # 3
      Airport.new("London City", "England"),  # 4
    ]
    #####################  Array terminals ##############################
      airports[0].terminals = [
        Terminal.new("South", 1000),
        Terminal.new("North" , 500)
      ]

      airports[1].terminals = [
        Terminal.new("Terminal-1", 1200),
        Terminal.new("Terminals-2" , 1000),
        Terminal.new("Terminal-3", 800),
        Terminal.new("Terminals-4" , 500),
        Terminal.new("Terminals-5" , 2000)
      ]

      airports[2].terminals = [
        Terminal.new("Sector-1", 700),
        Terminal.new("Sector-2" , 500)
      ]
      airports[3].terminals = [
        Terminal.new("East", 450),
        Terminal.new("West" , 550)
      ]
      airports[4].terminals = [
        Terminal.new("Terminal-1", 200),
        Terminal.new("Terminal-2" , 400)
      ]
    ######################## Array flights ###########################

    airports[0].terminals[0].flights = [
      Flight.new("England", "Japan", "J-airlianes"),
      Flight.new("England", "Brazil", "B-airlianes"),
      Flight.new("England", "Spain", "S-airlianes"),
      Flight.new("England", "Portugal", "P-airlianes"),
      Flight.new("England", "Italy", "I-airlianes"),
      Flight.new("England", "France", "F-airlianes")
    ]
    airports[0].terminals[1].flights = [
      Flight.new("England", "Spain", "S-airlianes"),
      Flight.new("England", "Portugal", "P-airlianes"),
      Flight.new("England", "Ireland", "Ir-airlianes"),
      Flight.new("England", "Scotland", "Sc-airlianes"),
      Flight.new("England", "Italy", "I-airlianes"),
      Flight.new("England", "France", "F-airlianes")
    ]
    airports[1].terminals[0].flights = [
      Flight.new("England", "Italy", "I-airlianes"),
      Flight.new("England", "France", "F-airlianes"),
      Flight.new("England", "US", "U-airlianes"),
      Flight.new("England", "Mexico", "M-airlianes"),
      Flight.new("England", "Germany", "G-airlianes"),
      Flight.new("England", "Greece", "Gr-airlianes")
    ]
    airports[1].terminals[1].flights = [
      Flight.new("England", "Germany", "G-airlianes"),
      Flight.new("England", "Greece", "Gr-airlianes"),
      Flight.new("England", "Colombia", "C-airlianes"),
      Flight.new("England", "Argentina", "A-airlianes")
    ]
    airports[2].terminals[0].flights = [
      Flight.new("England", "Ireland", "Ir-airlianes"),
      Flight.new("England", "Scotland", "Sc-airlianes")
    ]
    airports[2].terminals[1].flights = [
      Flight.new("England", "US", "U-airlianes"),
      Flight.new("England", "Mexico", "M-airlianes"),
      Flight.new("England", "Austria", "Au-airlianes"),
      Flight.new("England", "Monaco", "M-airlianes"),
      Flight.new("England", "Colombia", "C-airlianes"),
      Flight.new("England", "Argentina", "A-airlianes")
    ]
    airports[3].terminals[0].flights = [
      Flight.new("England", "Colombia", "C-airlianes"),
      Flight.new("England", "Argentina", "A-airlianes"),
      Flight.new("England", "Italy", "I-airlianes"),
      Flight.new("England", "France", "F-airlianes"),
      Flight.new("England", "US", "U-airlianes"),
      Flight.new("England", "Mexico", "M-airlianes"),
      Flight.new("England", "Germany", "G-airlianes"),
      Flight.new("England", "Greece", "Gr-airlianes")
    ]
    airports[3].terminals[1].flights = [
      Flight.new("England", "Austria", "Au-airlianes"),
      Flight.new("England", "Monaco", "M-airlianes"),
      Flight.new("England", "Colombia", "C-airlianes"),
      Flight.new("England", "Argentina", "A-airlianes")
    ]
    airports[4].terminals[0].flights = [
      Flight.new("England", "Malta", "M-airlianes"),
      Flight.new("England", "Canada", "Ca-airlianes")
    ]
    airports[4].terminals[1].flights = [
      Flight.new("England", "Wales", "W-airlianes"),
      Flight.new("England", "Poland", "P-airlianes"),
      Flight.new("England", "Colombia", "C-airlianes"),
      Flight.new("England", "Argentina", "A-airlianes")
    ]

    ########################## Array passengers #########################
    airports[0].terminals[0].flights[0].passengers = [
      Passenger.new("Bob", "Smith", "27-01-1990"),
      Passenger.new("Anna", "Clark", "19-05-1985")
    ]
    airports[0].terminals[0].flights[1].passengers = [
      Passenger.new("Mark", "Zung", "27-01-1990"),
      Passenger.new("Petter", "Elvis", "19-05-1985")
    ]
    airports[0].terminals[1].flights[1].passengers = [
      Passenger.new("James", "Foxx", "27-01-1990"),
      Passenger.new("Alfred", "Alves", "19-05-1985")
    ]
    airports[1].terminals[0].flights[0].passengers = [
      Passenger.new("James", "Foxx", "27-01-1990"),
      Passenger.new("Alfred", "Alves", "19-05-1985")
    ]
    airports[1].terminals[1].flights[0].passengers = [
      Passenger.new("Bob", "Smith", "27-01-1990"),
      Passenger.new("Anna", "Clark", "19-05-1985")
    ]
    airports[1].terminals[1].flights[1].passengers = [
      Passenger.new("Mark", "Zung", "27-01-1990"),
      Passenger.new("Petter", "Elvis", "19-05-1985")
    ]
    airports[2].terminals[0].flights[0].passengers = [
      Passenger.new("James", "Foxx", "27-01-1990"),
      Passenger.new("Alfred", "Alves", "19-05-1985")
    ]

    airports[2].terminals[1].flights[0].passengers = [
      Passenger.new("James", "Foxx", "27-01-1990"),
      Passenger.new("Alfred", "Alves", "19-05-1985")
    ]
    airports[2].terminals[1].flights[1].passengers = [
      Passenger.new("Bob", "Smith", "27-01-1990"),
      Passenger.new("Anna", "Clark", "19-05-1985")
    ]
    airports[2].terminals[1].flights[1].passengers = [
      Passenger.new("Mark", "Zung", "27-01-1990"),
      Passenger.new("Petter", "Elvis", "19-05-1985")
    ]
    airports[2].terminals[1].flights[2].passengers = [
      Passenger.new("James", "Foxx", "27-01-1990"),
      Passenger.new("Alfred", "Alves", "19-05-1985")
    ]

    airports[1].terminals[1].flights[1].passengers = [
      Passenger.new("James", "Foxx", "27-01-1990"),
      Passenger.new("Alfred", "Alves", "19-05-1985")
    ]

    airports
  end

end
