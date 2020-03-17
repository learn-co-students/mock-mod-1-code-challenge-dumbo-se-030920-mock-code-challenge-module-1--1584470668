class Ride

    attr_accessor :passenger, :driver, :distance
    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.average_distance
        all_distances = Ride.all.map { |ride|
            ride.distance
        }

        average = all_distances.sum / all_distances.length
    end

end