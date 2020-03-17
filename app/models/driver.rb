class Driver

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def passenger_names
        rides.map do |ride|
            ride.passenger.name
        end.uniq
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        driver_w_miles = {}
        Ride.all.each do |ride|
            driver_w_miles[ride.driver] ? driver_w_miles[ride.driver] += ride.distance : driver_w_miles[ride.driver] = ride.distance
        end
        driver_w_miles.select{|k, v| v > distance}
    end

end