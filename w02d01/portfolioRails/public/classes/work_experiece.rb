class Work_experience
  attr_accessor :company, :title, :city, :date, :duty

  def initialize company, title, city, date, duty
    @company = company
    @title = title
    @city = city
    @date = date
    @duty = duty
  end

end
