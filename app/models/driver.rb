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

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_names
        passenger_array = rides.map(&:passenger)
        passenger_array.uniq.map(&:name)
    end

    def total_distance
        rides.sum {|ride| ride.distance}
    end

    def self.mileage_cap(dist_cap)
        all.select {|driver| driver.total_distance > dist_cap}
    end
end
