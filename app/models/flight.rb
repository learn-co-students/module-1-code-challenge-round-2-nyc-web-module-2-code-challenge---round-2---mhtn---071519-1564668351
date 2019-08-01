class Flight < ActiveRecord::Base
    belongs_to :plane
    belongs_to :passenger

    #returns the flight's duration as an integer 
    def duration
        self.duration
    end

    #returns the flight's origin as a string
    def origin
        self.origin
    end

    #returns the flight's destination as a string
    def destination
        self.destination
    end

    #returns an array of all the passenger instances that are associated 
    #with the flight
    def passengers
        self.passenger.length
    end

    #returns the instance of the place that is associated with the flight
    def plane
        self.flight.origin
    end

    #returns an array of all ticket instances associated with the flight
    def tickets
        self.ticket.flight
    end

    #returns the total sum of passengers associated with the flight as an integer
    def total_passengers
        self.flight.passengers
    end

end