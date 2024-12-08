require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
P1 = Passenger.new("Jonathan")
P2 = Passenger.new("Mason")
D1 = Driver.new("Ryad")
D2 = Driver.new("Hamza")
R1 = Ride.new(Ryad, Mason, 5.0)
R2 = Ride.new(Hamza, Mason, 75.0)
R3 = Ride.new(Ryad, Mason, 43.0)
R4 = Ride.new(Ryad, Jonathan, 89.0)
binding.pry
