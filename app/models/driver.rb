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
        Ride.all.select{|rides|
        rides.driver == self }
    end

    def passenger_names
        rides.map{|ridess|
        ridess.passenger}.uniq
    end

    def self.mileage_cat(distance)
        rides.map{|ridess|
        rides.distance > distance
    }
    end

end
