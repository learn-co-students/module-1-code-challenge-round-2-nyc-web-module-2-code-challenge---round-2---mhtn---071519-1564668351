class Passenger < ActiveRecord::Base
    has_many :tickets
    has_many :flights, through: :tickets
    has_many :flights
    has_many :planes, through: :flights
end