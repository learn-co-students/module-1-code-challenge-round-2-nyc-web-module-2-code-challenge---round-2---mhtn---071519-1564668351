class AddPassengerIdColumnTpFlight < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :passenger_id, :integer
  end
end
