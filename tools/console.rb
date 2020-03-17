require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

isabel = Passenger.new("Isabel")
kiki = Passenger.new("Kiki")

frankie = Driver.new("Frankie")
diva = Driver.new("Diva")

to_trader_joes = Ride.new(isabel, frankie, 3)
to_the_gym = Ride.new(isabel, diva, 12.75)
to_pizzeria = Ride.new(isabel, frankie, 99)
to_the_pet_store = Ride.new(kiki, diva, 250)
to_the_movies = Ride.new(kiki, frankie, 15)

Ride.average_distance
Passenger.premium_members
Driver.mileage_cap(50)

binding.pry
