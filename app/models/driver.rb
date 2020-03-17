class Driver

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end
    
    def passenger_names
        # Ride.all.map do |ride|
        #     if ride.driver == self
        #         ride.passenger
        #         binding.pry
        #     end
        # end.uniq
        rides.map do |ride|
            ride.passenger
        end
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #takes distance
        #need array of all drivers
        #use select to filter
        #need to know how much each driver has driven
        #driver's trips * total miles
        @@all.select do |driver|
            self.driver.rides * Ride.average_distance > distance
            #binding.pry
        end
    end

end

