require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
william = Driver.new("William West")
tom = Driver.new("Tom Thompson")

jack = Passenger.new("Jack James")
michael = Passenger.new("Michael Marbleton")
tracey = Passenger.new("Tracey Trine")

Ride.new(william, jack, 98.0)
Ride.new(tom, jack, 25.0)
Ride.new(tom, michael, 40.0)
Ride.new(tom, michael, 10.0)

jack.rides
jack.drivers
jack.total_distance
Passenger.premium_members

tom.rides
tom.passenger_names
Driver.mileage_cap(97.0)

Ride.average_distance


binding.pry
