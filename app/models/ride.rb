class Ride

    attr_accessor :driver, :passenger, :distance
    @@all = []
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
       distance =  self.all.sum{|rides|rides.distance}
       rideamount = self.all.length
       average = distance / rideamount
       average
    end
end