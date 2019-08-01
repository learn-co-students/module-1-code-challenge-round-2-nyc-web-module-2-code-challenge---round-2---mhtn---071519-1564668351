class Flight < ActiveRecord::Base
    belongs_to :plane
    belongs_to :passenger
    has_many :passengers
end