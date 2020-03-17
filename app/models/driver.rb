class Driver

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def rides
        Ride.all.select { |ride|
            ride.driver == self
        }
    end

    def total_distance
        distances = self.rides.map { |ride|
            ride.distance
        }

        distances.sum
    end

    def passenger_names
        drivers_passengers = self.rides.map { |ride|
            ride.passenger.name
        }

        drivers_passengers.uniq
    end

    def self.mileage_cap(distance)
    # Take an argument of a distance (float)
    # return an array of all Drivers who have driven over the mileage
        Driver.all.select { |driver|
            driver.total_distance >= distance
        }
        
    end

    def self.all
        @@all
    end 

end