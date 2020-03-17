
class Ride 
  attr_accessor  :driver , :passenger , :distance
   @@all = [] 
 def initialize(driver , passenger , distance)
   @driver = driver 
   @passenger = passenger 
   @distance = distance
   @@all << self 
 end

 def self.all 
    @@all 
 end 

 def self.average_distance
  total = Ride.all.map do |ride|
    ride.distance
 end 
   total.sum/total.length
 end 

end 