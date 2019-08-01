class Plane < ActiveRecord::Base
    has_many :flights
    has_many :passengers, through: :flights

    # returns the plane's name as a string
    def name
        self.name
    end

    #returns the plane's num_of_seats as an integer
    def num_of_seats
        self.plane.num_of_seats
    end

    #returns an array of all flight instances associated with the plane
    def flights
        self.flights
    end

    #returns the total sum of number of passengers associated with this plane as an integer
    def total_passengers
        self.plane.passengers.length
    end

end