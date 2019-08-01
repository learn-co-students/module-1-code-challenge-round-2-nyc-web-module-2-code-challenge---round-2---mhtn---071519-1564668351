class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.string :name
      t.integer :num_of_seats 
      t.string :flights
      t.string :passengers
      t.string :total_passengers
    end
  end
end
