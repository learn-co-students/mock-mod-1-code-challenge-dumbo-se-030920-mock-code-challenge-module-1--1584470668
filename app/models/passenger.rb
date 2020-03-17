class Passenger

        @@all

    attr_accessor :ride, :total_distance
    attr_reader :name, :drivers

        def initialize(name, ride, drivers, total_distance)
            @name = name 
            @ride = ride   
            @drivers = drivers
            @total_distance = total_distance
            self << @@all
        end
            
        def self.all
            @@all
        end


end

