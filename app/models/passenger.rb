class Passenger 

    attr_reader :name 
     @@all = [] 
    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all 
      @@all 
    end
    
    def rides 
      Ride.all.select do |rides| 
        rides.passenger == self
    end
  end
    def drivers 
        Ride.all.select  do |ride| 
          ride.driver == self 
      
     end 
end
    def total_distance 
     
        Ride.all.map do |total|
            total.distance 
        end.sum

    end 

    def self.premiem_members 
        Ride.all.select do |rides| 
            rides.distance  > 100.0

    end
end

 





end 
