class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :plane_id
      t.integer :passenger_id
      t.integer :duration
      t.string :origin
      t.string :destination
      t.string :flights
      t.string :tickets
    end
  end
end



