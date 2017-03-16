class Flight

  attr_accessor :flight_from, :flight_to, :flight_airline, :flight_passengers

  def initialize flight_from, flight_to, flight_airline
    @flight_from = flight_from
    @flight_to = flight_to
    @flight_airline = flight_airline
    @flight_passengers = []
  end

  def description
    "#{self.light_from}, #{self.flight_to}, #{self.flight_airline}, #{self.flight_passengers}"
  end

end
