class Passenger

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        rides.map(&:driver).uniq
    end

    def total_distance
        rides.map(&:distance).sum
    end

    def self.all
        @@all
    end

    def self.premium_members
        passenger_w_miles = {}
        Ride.all.each do |ride|
            passenger_w_miles[ride.passenger] ? passenger_w_miles[ride.passenger] += ride.distance : passenger_w_miles[ride.passenger] = ride.distance
        end
        passenger_w_miles.select{|k, v| v > 100}
    end

end