class Passenger < ActiveRecord::Base
    has_many :flights
    has_many :planes, through: :flights

    # returns the passenger's name as a string
    def name
        self.name
    end

    #returns an array of all flight instances associated with the passenger
    def flights
        self.flights
    end

    #return an array of all ticket instances associated with the passenger
    def tickets
        self.id.all
    end

    #returns an array of all plane instances associated with the passenger
    def planes
        self.passenger.all
    end

    #returns the total sum of the duration of each flight associated with the passenger as an integer
    def total_flight_time
        self.passenger.flight.length
    end

end