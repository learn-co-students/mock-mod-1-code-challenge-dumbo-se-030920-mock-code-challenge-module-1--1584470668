require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

stephanie = Driver.new("Stephanie")
alisha = Driver.new("Jess")
mary = Driver.new("Mary")

ride1 = Ride.new("Stephanie", "Tiffany", "25")
ride2 = Ride.new("Mary", "Nick", "100")
ride3 = Ride.new("Stephanie", "Joslyn", "50")
ride4 = Ride.new("Jess", "Brianna", "5000")

maggie = Passenger.new("Maggie")
cynthia = Passenger.new("Cynthia")


# Put your variables here~!

binding.pry

"Keeping this here"