class RemoveColumnPassengerIdFromFlights < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :passenger_id, :integer
  end
end
