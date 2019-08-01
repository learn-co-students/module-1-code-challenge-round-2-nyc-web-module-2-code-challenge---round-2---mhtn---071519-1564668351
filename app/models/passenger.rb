class Passenger < ActiveRecord::Base
    has_many :flights
    has_many :planes, through: :flights
end