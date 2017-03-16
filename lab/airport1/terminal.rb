class Terminal

  attr_accessor :name, :capacity, :flights

  def initialize name, capacity
    @name = name
    @capacity = capacity
    @flights = []
  end

  def terminal
    "#{self.name}, #{self.capacity}, #{self.flights}"
  end

end
