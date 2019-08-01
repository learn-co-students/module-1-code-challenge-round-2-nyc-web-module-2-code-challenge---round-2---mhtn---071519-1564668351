class Flight < ActiveRecord::Base
    belongs_to :plane
    belongs_to :passenger
    has_many :tickets
    has_many :passengers, through: :tickets
end