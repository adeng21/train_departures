class CreateDepartures < ActiveRecord::Migration[5.1]
  def change
    create_table :departures do |t|
      t.integer :origin_station_id, index: true
      t.integer :trip_number
      t.integer :destination_station_id, index: true
      t.timestamp :scheduled_time
      t.integer :lateness
      t.integer :track_number
      t.string :status

      t.timestamps
    end
  end
end
