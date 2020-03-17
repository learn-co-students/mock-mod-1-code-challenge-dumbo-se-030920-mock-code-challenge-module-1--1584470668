require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


gary = Passenger.new("Gary")
brother = Driver.new("Brother")
garyride = Ride.new(brother, gary, 1000)
ruby = Passenger.new("Ruby")
rubyride = Ride.new(brother, ruby, 20000)

# Put your variables here~!

binding.pry
