class Flight

  attr_accessor :flight_from, :flight_to, :flight_airline, :passengers

  def initialize flight_from, flight_to, flight_airline
    @flight_from = flight_from
    @flight_to = flight_to
    @flight_airline = flight_airline
    @passengers = []
  end

  def flight
    "#{self.flight_from}, #{self.flight_to}, #{self.flight_airline}, #{self.passengers}"
  end

end
