
class Driver 
 attr_accessor :name 
 @@all = [] 
 def initialize(name)
    @name = name
    @@all << self  
end

def self.all 
   @@all 
end

def passenger_names
   passengers =  Ride.all.find do | passenger|
     passenger.driver == self
  end

  passengers
end

def rides 
    Ride.all.select do |rides|
     rides.driver == self 
end 
end

def self.mileage(distance_driven)
 driver = Ride.all.select do |rides| 
        rides.distance  > distance_driven
    end
 driver

end



end 