class Ride

    @@all = []

    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.average_distance
        #class method
        #take total distance/total rides
        #total distance is 
        # @@all.distance / @all.length

        total_distance = @@all.sum do |ride|
            ride.distance
        end
        total_distance.to_f / @@all.length
        binding.pry
    end

    def self.all
        @@all
    end

end
