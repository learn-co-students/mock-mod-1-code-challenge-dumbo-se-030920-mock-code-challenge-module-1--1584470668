class Passenger

    attr_reader :name
    @@all = []
    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|rides|
        rides.passenger == self
    }
    end

    def drivers
        rides.map {|rides|
        rides.driver
    }
    end

    def total_distance
        rides.sum{|rides|
        rides.distance
    }
    end

    def self.premium_members
        # a = []
        binding.pry 
        # if self.total_distance > 100.0
        #     a<<self
        # end
        # a

        
        # a = []
        # eptd = self.rides.sum{|ride|
        # binding.pry
        # ride.distance}
        # if eptd > 100.0
        #     a << eptd
        # end
        # a
    end

end
