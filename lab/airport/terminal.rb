class Terminal

  attr_accessor :name, :capacity, :flights

  def initialize name, capacity
    @name = name
    @capacity = capacity
    @flight = []
  end

  def terminal_list
    "#{self.terminal_name}, #{self.terminal_capacity}, #{self.terminal_flight}"
  end

end
