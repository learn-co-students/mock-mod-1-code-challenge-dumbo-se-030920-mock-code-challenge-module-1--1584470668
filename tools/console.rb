require_relative '../config/environment.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'



def reload
  load 'config/environment.rb'
end


# Put your variables here~!
custy1 = Passenger.new("Jafri", "Haneida, Tokyo Tower", "Alfred", "10 Miles")
custy2 = Passenger.new("Kudo", "Kyoto", "Pennyworth", "15 Miles")


binding.pry

