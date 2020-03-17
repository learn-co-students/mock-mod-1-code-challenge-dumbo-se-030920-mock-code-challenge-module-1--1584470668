require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

xavier = Passenger.new("Xavier")
gary = Passenger.new("Gary")
rei = Driver.new("Rei")
graham = Driver.new("graham")

vernon = Ride.new(rei , xavier , 100.0)
white_plains = Ride.new(graham , xavier , 58.0)
city = Ride.new(rei , xavier , 33.0)
yonkers = Ride.new(graham , gary , 32)

binding.pry
