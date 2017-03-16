class Airport

  attr_accessor :airport_name, :airport_country, :airport_terminal

  def initialize airport_name, airport_country
    @airport_name = airport_name
    @airport_country = airport_country
    @airport_terminal = []
  end

  def airport_list
    "#{self.airport_name}, #{self.airport_country}, #{self.airport_terminal}"
  end

end
