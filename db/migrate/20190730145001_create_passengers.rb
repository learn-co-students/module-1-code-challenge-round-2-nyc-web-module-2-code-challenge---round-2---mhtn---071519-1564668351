class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :name
    end
  end

  def name
    Passengers.all.name
  end
end
