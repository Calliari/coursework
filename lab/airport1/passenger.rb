class Passenger

  attr_accessor :first_name, :last_name, :dob

  def initialize first_name, last_name, dob
    @first_name = first_name
    @last_name = last_name
    @dob = dob
  end

  def passenger
    "#{self.first_name}, #{self.last_name}, #{self.dob}"
  end

end
