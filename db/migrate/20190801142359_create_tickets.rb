class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :flight_id
      t.integer :passenger_id
    end
  end
end
