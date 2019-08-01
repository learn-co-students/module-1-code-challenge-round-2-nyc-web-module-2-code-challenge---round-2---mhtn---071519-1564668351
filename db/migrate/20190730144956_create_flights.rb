class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.string :origin
      t.string :destination
      t.integer :plane_id
      t.integer :passenger_id
    end
  end

def duration(flight)
length = Flight.find_by(id).duraiton
length
end


end