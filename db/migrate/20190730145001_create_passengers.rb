class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :flights
      t.string :tickets
      t.string :planes
      t.integer :total_flight_time
    end
  end
end


