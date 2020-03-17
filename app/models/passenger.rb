class Passenger
    
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.name == self
        end
    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        rides.sum do |ride|
            ride.distance 
        end
    end

    def self.all
        @@all
    end

    def self.premium_members
        #total distance select filter > 100
        @@all.select do |passenger|
            passenger.total_distance > 100
        end
    end
            
end

