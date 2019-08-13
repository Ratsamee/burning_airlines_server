class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.text :flight_number
      t.string :origin
      t.string :destination
      t.datetime :departure_date
      t.integer :airplane_id

      t.timestamps
    end
  end
end
