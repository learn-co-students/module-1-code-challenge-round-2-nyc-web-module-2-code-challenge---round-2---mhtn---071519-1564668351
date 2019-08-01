class Passenger < ActiveRecord::Base
    has_many :tickets
    has_many :flights, through: :tickets


#     `Passenger#name`
#     - returns the passenger's name as a string
    
#   `Passenger#flights`
#     - returns an array of all flight instances associated with the passenger
    
# Ticket.all.select do |ticket|
    #     ticket.passenger_id == self.passenger_id

            # p5 = Passenger.create(name: "Andrew")

            # p5.tickets.each do |tkt|
            #     tkt.passenger_id == p5.id

#   `Passenger#tickets`
#     - returns an array of all ticket instances associated with the passenger

    # Ticket.all(passenger)
    
#   `Passenger#planes`
#     - returns an array of all plane instances associated with the passenger

    # Flight.all.where()
    
#   `Passenger#total_flight_time`
#     - returns the total sum of the duration for each flight associated with the passenger as an integer 
#     def total_flight_time
#     Ticket.all.each do |tkt|
#         tkt.
#     end
# end

end