require_relative "./car.rb"
require_relative "./tax_bands.rb"


# car_one_colour = "blue"
# car_one_make = "BMW"
# car_one_model = "320i"
# car_one_engine_size = 2.0
# car_one_body_type = "Estate"

# steve's car is an insatce of a class Car
steve_car = Car.new "blue", "BMW", "320i", 2.0, "Estate"
bobs_car = Car.new "red", "Fiat", "Uno", 1.0, "Hashback"

# # Array
# cars = []
# # push evrything inside an array
# cars.push steve_car

puts steve_car.description
# puts bobs_car.description

tax_band = TaxBands.get_tax_band steve_car.engine_size

puts "The tax band is #{tax_band}"
