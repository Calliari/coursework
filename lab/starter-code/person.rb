class Person

    def name
        # create a name variable
        name = "Osvaldo"

    end

    def age
        # create age variable here
        age = 30

    end

    def children
        # create children array here
        children = []
        children.push "Jhon", "Anna", "Nick", "Clei"


    end

    def address

      #  create address hash here
      address = {
        house_number: 21,
        street: "Harrow",
        town: "London",
        county: "UK",
        postcode:"NW10",
        email_addresses:["osvaldo@gmail.com", "junior@gmail.com"]

      }
  #    puts address[:name, :house_number, :street, :county, :postcode, :email_addresses]


    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = favourite_things[1] + " " +  memorable_stuff[:birth_town]



    end

end
