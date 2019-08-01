class Flight < ActiveRecord::Base
    belongs_to :plane

    has_many :tickets
    has_many :passengers, through: :tickets


    #     `Flight#passengers` 
#     - returns an array of all the passenger instances that are associated with the the flight
    
    def passengers
       arr = Flight.
    end

#   `Flight#plane`
#     - returns the instance of the plane that is associated with the flight
    
#   `Flight#tickets`
#     - returns an array of all ticket instances associated with the flight


    
#   `Flight#total_passengers`
#     - returns the total sum of number of passengers associated with the flight as an integer


# 


end