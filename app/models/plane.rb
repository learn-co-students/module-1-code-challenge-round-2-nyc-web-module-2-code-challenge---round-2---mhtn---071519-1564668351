class Plane < ActiveRecord::Base
    has_many :flights
    has_many :passengers, through: :flights
#     `Plane#flights`
#     - returns an array of all flight instances associated with the plane
    
#   `Plane#passengers`
#     - returns an array of all passenger instances associated with the plane
    
#   `Plane#total_passengers`
#     - returns the total sum of number of passengers associated with this plane as an integer 


end