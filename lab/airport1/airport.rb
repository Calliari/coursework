class Airport

  attr_accessor :name, :country, :terminals

  def initialize name, country
    @name = name
    @country = country
    @terminals = []
  end

  def airport
    "#{self.name}, #{self.country}, #{self.terminals}"
  end

end
