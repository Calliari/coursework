class User
    attr_accessor :name, :last_name, :sex, :nationality, :telephone, :address, :postcode

    def initialize name, last_name, sex, nationality, telephone, address, postcode
      @name = name
      @last_name = last_name
      @sex = sex
      @nationality = nationality
      @telephone = telephone
      @address = address
      @postcode = postcode
    end

  end
