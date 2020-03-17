require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Peter")
p2 = Passenger.new("Paul")
p3 = Passenger.new("Mary")

d1 = Driver.new("Mario")
d2 = Driver.new("Luigi")
d3 = Driver.new("Yoshi")

r1 = Ride.new(d1, p1, 4.5)
r2 = Ride.new(d3, p1, 4.5)
r3 = Ride.new(d2, p2, 0.5)
r4 = Ride.new(d3, p3, 25.0)
r5 = Ride.new(d3, p3, 15.7)
r6 = Ride.new(d1, p3, 1.1)
r7 = Ride.new(d1, p3, 96.7)

binding.pry
