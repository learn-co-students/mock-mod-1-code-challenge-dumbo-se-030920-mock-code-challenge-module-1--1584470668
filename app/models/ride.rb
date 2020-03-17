class Ride
attr_accessor :distance
attr_reader :driver, :passenger

    @@all = []
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        dist_array = all.map(&:distance)
        dist_array.sum / dist_array.length
    end

end

